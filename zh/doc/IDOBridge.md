# 桥接

### 功能概述

用于桥接蓝牙库和协议库，属于sdk的部分接口。



# `BridgeInterface`

用于桥接蓝牙库和协议库，实现蓝牙数据、状态传输

## Methods

### `setupBridge(delegate:logType:)`

注册,程序开始运行调用

- Parameters:
  - delegate: [IDOBridgeDelegate](delegate/IDOBridgeDelegate.md) 代理
  - logType: log等级

### `markConnectedDevice(uniqueId:otaType:isBinded:deviceName:completion:)`

标记设备已连接 （蓝牙连接时调用）**（注意：仅限lite使用）**

- Parameters:
  - uniqueId: Android（当前连接设备的mac地址），iOS（当前连接设备的mac地址或uuid)
  - otaType: 设置ota模式
  - isBinded: 绑定状态
  - deviceName: 设备名称

### `markDisconnectedDevice(macAddress:uuid:completion:)`

标记设备已断开（蓝牙断开时调用）**（注意：仅限lite使用）**

### `receiveDataFromBle(data:macAddress:useSPP:)`

蓝牙响应数据总入口**（注意：仅限lite使用）**

type 数据类型 0:ble 1:SPP

### `writeDataComplete()`

发送蓝牙数据完成**（注意：仅限lite使用）**



## 示例

### 注册Brigde模块

Swift:

```swift
// protocol library
sdk.bridge.setupBridge(delegate: <IDOBridgeDelegate>, logType: .release)
```

[蓝牙库注册参考](IDOBluetooth.md)



### 代理实现

Swift:

```swift
// 实现代理
extension SomeClass: IDOBridgeDelegate {
  
  // 监听SDK状态通知
  func listenStatusNotification(status: IDOStatusNotification) {
      print("StatusNotification: \(status)")
      NotificationCenter.default.post(name: "onSdkStatusChanged", object: status)
  }

  // 监听设备主动通知/控制事件
  func listenDeviceNotification(model: IDODeviceNotificationModel) {
      print("DeviceNotification: \(model)")
      NotificationCenter.default.post(name: "onSdkDeviceStateChanged", object: model)
  }
}

```

Kotlin:

```kotlin
class BleData : IDOBridgeDelegate {

        override fun listenStatusNotification(status: IDOStatusNotification) {
            println("listenStatusNotification $status");
        }

        override fun listenDeviceNotification(status: IDODeviceNotificationModel) {
            println("listenDeviceNotification $status");
        }

}
```



### 桥接蓝牙库（内部）

使用SDK提供的蓝牙库

Swift:

```swift
// 实现代理
extension SomeClass: IDOBleDelegate {
  
  	func scanResult(list: [IDODeviceModel]?) {
        // 扫描结果集
    }
  
    func deviceState(state: IDODeviceStateModel) {
       // 设备相关状态
    }
    
  	func bluetoothState(state: IDOBluetoothStateModel) {
        // 蓝牙相关状态
    }

}


```

Kotlin:

```kotlin
 class Blelisten : IDOBleDelegate {

        override fun scanResult(list: List<IDOBleDeviceModel>?) {
           // 扫描结果集
        }

        override fun bluetoothState(state: IDOBluetoothStateModel) {
           // 蓝牙相关状态
        }

        override fun deviceState(idoDeviceStateModel: IDODeviceStateModel) {
             // 设备相关状态
        }

    }
```





### 桥接蓝牙库（外部）

使用非SDK提供的蓝牙库

Swift:

```swift
// 外部蓝牙库接入

// 1、蓝牙设备连接与断开时，需要调用SDK相应方法：

// 标记设备已连接
let uniqueId = "蓝牙设备的mac地址 或 uuid"
sdk.bridge.markConnectedDevice(uniqueId: uniqueId, otaType: .none, isBinded: false, deviceName: deviceModel.name) { rs in

}

// 标记设备已断开
sdk.bridge.markDisconnectedDevice(macAddress: self.deviceModel?.macAddress, uuid: self.deviceModel?.uuid) { rs in

}


// 2、发送数据： 协议库数据 -> 蓝牙设备
// 在桥接代理IDOBridgeDelegate中，实现将收到的数据通过蓝牙库发送，并在发送完成后调用写完成
extension SomeClass: IDOBridgeDelegate {

  // 需要将指令数据发到蓝牙设备（!!!重要）
  func writeDataToBle(bleData: protocol_channel.IDOBleData) {
      guard let device = currentDeviceModel else { return }
      guard let characteristic = device.peripheral.writeCharacteristic() else { return }
      // 此处根据实际情况做相应替换
    	bleMgr.write(peripheral: characteristic.0, characteristic: characteristic.1, data: bleData.data!) { err in
          if err != nil {
              print("写失败：\(err.debugDescription)")
          }else {
              // 写完成 （!!!重要）
              sdk.bridge.writeDataComplete()
          }
      }
  }
    
  // 监听SDK状态通知
  func listenStatusNotification(status: IDOStatusNotification) {
      print("StatusNotification: \(status)")
      NotificationCenter.default.post(name: "onSdkStatusChanged", object: status)
  }

  // 监听设备主动通知/控制事件
  func listenDeviceNotification(model: IDODeviceNotificationModel) {
      print("DeviceNotification: \(model)")
      NotificationCenter.default.post(name: "onSdkDeviceStateChanged", object: model)
  }
}


// 3、接收数据：蓝牙设备 -> 协议库

SomeBleSDK:
// 仅供参考
/
// 收到蓝牙响应数据
func receiveData(data: SomeDataClass) {
    if data.data != nil {
      	// 将数据发给协议库
        sdk.bridge.receiveDataFromBle(data: data.data!, macAddress: data.macAddress or nil)
    } else {
        print("receiveData data is null")
    }
}



```

Kotlin:

```kotlin
// 外部蓝牙库接入

// 1、蓝牙设备连接与断开时，需要调用SDK相应方法：

// 标记设备已连接
var mac = "xx:xx:xx:xx:xx:xx"
sdk.bridge.markConnectedDevice(mac: String, type: otaType, isBinded:boolean, deviceName: String) 

// 标记设备已断开
sdk.bridge.markDisconnectedDevice(mac: String, type: otaType, isBinded:boolean, deviceName: String) 


// 2、发送数据： 协议库数据 -> 蓝牙设备
// 在桥接代理IDOBridgeDelegate中，实现将收到的数据通过蓝牙库发送，并在发送完成后调用写完成
//  sdk.bridge.setupBridge(BleDataBrige(), IDOLogType.RELEASE)  全局注册
     val uuid_service:String = "00000aF0-0000-1000-8000-00805f9b34fb"
     val uuid_characteristic_notify:String = "00000aF7-0000-1000-8000-00805f9b34fb"
     val uuid_characteristic_write:String = "00000aF6-0000-1000-8000-00805f9b34fb"
  class BleDataBrige : IDOBridgeDelegate {

        override fun listenStatusNotification(status: IDOStatusNotification) {
            Logutil.logMessage("bledata","status:$status")
        }

        override fun writeDataToBle(request: IDOBleDataRequest) {
            Logutil.logMessage("bledata","writeDataToBle:${request.data}")
            //这个回调是sdk 会把需要发送的指令回调过来
            // 通过蓝牙服务，如上面，拿到bluetoothGatt，characteristic，然后写入数据
            
            bluetoothGatt.writeCharacteristic(characteristic)
            sdk.bridge.writeDataComplete()
        }

        override fun listenDeviceNotification(status: IDODeviceNotificationModel) {
            Logutil.logMessage("bledata","listenDeviceNotification:${status}")
        }

        private fun getCharacteristic(
            gatt: BluetoothGatt?,
            serviceId: UUID,
            characteristicId: UUID
        ): BluetoothGattCharacteristic? {
            if (gatt == null) {
                return null
            }
            val service = gatt.getService(serviceId)
                ?: //        	DebugLog.p("service is nullllll");
                return null
            return service.getCharacteristic(characteristicId)
        }

    }
  }


// 3、接收数据：蓝牙设备 -> 协议库
蓝牙接受到数据后，把数据传给sdk,sdk 会解析返回到对应的请求回调结果

 sdk.bridge.receiveDataFromBle(data,bleDevice?.mac,false)

demo:// 收到蓝牙响应数据
func receiveData(data: ByteArray) {
     sdk.bridge.receiveDataFromBle(data,bleDevice?.mac,false)
}

```

