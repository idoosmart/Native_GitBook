# Bridge


# `BridgeInterface`

Used to bridge the Bluetooth library and protocol library to realize Bluetooth data and status transmission

## Methods

### `setupBridge(delegate:logType:)`

Register, the program starts running and calls

- Parameters:
   - delegate: [IDOBridgeDelegate](delegate/IDOBridgeDelegate.md) proxy
   - logType: log level

### `markConnectedDevice(uniqueId:otaType:isBinded:deviceName:completion:)`

Mark the device as connected (called when Bluetooth is connected) **(for lite only)**

- Parameters:
   - uniqueId: Android (mac address of the currently connected device), iOS (mac address or uuid of the currently connected device)
   - otaType: Set ota mode
   - isBinded: binding status
   - deviceName: device name

### `markDisconnectedDevice(macAddress:uuid:completion:)`

Mark the device as disconnected (called when Bluetooth is disconnected) **(for lite only)**

### `receiveDataFromBle(data:macAddress:useSPP:)`

Bluetooth response data general entry **(for lite only)**

type data type 0:ble 1:SPP

### `writeDataComplete()`

Sending Bluetooth data completed **(for lite only)**



## Example

### Register Brigde module

Swift:

```swift
// protocol library
sdk.bridge.setupBridge(delegate: <IDOBridgeDelegate>, logType: .release)
```

[Bluetooth library registration reference](IDOBluetooth.md)



### Agent implementation

Swift:

```swift
// implement proxy
extension SomeClass: IDOBridgeDelegate {
  
   //Listen to SDK status notifications
   func listenStatusNotification(status: IDOStatusNotification) {
       print("StatusNotification: \(status)")
       NotificationCenter.default.post(name: "onSdkStatusChanged", object: status)
   }

   //Listen to device active notification/control events
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



### Bridge Bluetooth library (internal)

Use the Bluetooth library provided by the SDK

Swift:

```swift
// implement proxy
extension SomeClass: IDOBleDelegate {
  
   func scanResult(list: [IDODeviceModel]?) {
         //Scan result set
     }
  
     func deviceState(state: IDODeviceStateModel) {
        //Device related status
     }
    
   func bluetoothState(state: IDOBluetoothStateModel) {
         //Bluetooth related status
     }

}


```

Kotlin:

```kotlin
  class Blelisten : IDOBleDelegate {

         override fun scanResult(list: List<IDOBleDeviceModel>?) {
            //Scan result set
         }

         override fun bluetoothState(state: IDOBluetoothStateModel) {
            //Bluetooth related status
         }

         override fun deviceState(idoDeviceStateModel: IDODeviceStateModel) {
              //Device related status
         }

     }
```





### Bridge Bluetooth library (external)

Use Bluetooth libraries not provided by the SDK

Swift:

```swift
// External Bluetooth library access

// 1. When a Bluetooth device is connected or disconnected, the corresponding method of the SDK needs to be called:

// Mark the device as connected
let uniqueId = "mac address or uuid of the Bluetooth device"
sdk.bridge.markConnectedDevice(uniqueId: uniqueId, otaType: .none, isBinded: false, deviceName: deviceModel.name) { rs in

}

// Mark the device as disconnected
sdk.bridge.markDisconnectedDevice(macAddress: self.deviceModel?.macAddress, uuid: self.deviceModel?.uuid) { rs in

}


// 2. Send data: Protocol library data -> Bluetooth device
// In the bridge agent IDOBridgeDelegate, implement sending the received data through the Bluetooth library, and call the write completion after the sending is completed.
extension SomeClass: IDOBridgeDelegate {

   //Need to send command data to Bluetooth device (!!!Important)
   func writeDataToBle(bleData: protocol_channel.IDOBleData) {
       guard let device = currentDeviceModel else { return }
       guard let characteristic = device.peripheral.writeCharacteristic() else { return }
       //Replace accordingly according to actual situation here
     bleMgr.write(peripheral: characteristic.0, characteristic: characteristic.1, data: bleData.data!) { err in
           if err != nil {
               print("Write failed: \(err.debugDescription)")
           }else {
               // Writing completed (!!!Important)
               sdk.bridge.writeDataComplete()
           }
       }
   }
    
   //Listen to SDK status notifications
   func listenStatusNotification(status: IDOStatusNotification) {
       print("StatusNotification: \(status)")
       NotificationCenter.default.post(name: "onSdkStatusChanged", object: status)
   }

   //Listen to device active notification/control events
   func listenDeviceNotification(model: IDODeviceNotificationModel) {
       print("DeviceNotification: \(model)")
       NotificationCenter.default.post(name: "onSdkDeviceStateChanged", object: model)
   }
}


// 3. Receive data: Bluetooth device -> protocol library

SomeBleSDK:
// for reference only
//
//Receive Bluetooth response data
func receiveData(data: SomeDataClass) {
     if data.data != nil {
       //Send data to the protocol library
         sdk.bridge.receiveDataFromBle(data: data.data!, macAddress: data.macAddress or nil)
     } else {
         print("receiveData data is null")
     }
}



```

Kotlin:

```kotlin
// External Bluetooth library access

// 1. When a Bluetooth device is connected or disconnected, the corresponding method of the SDK needs to be called:

// Mark the device as connected
var mac = "xx:xx:xx:xx:xx:xx"
sdk.bridge.markConnectedDevice(mac: String, type: otaType, isBinded:boolean, deviceName: String)

// Mark the device as disconnected
sdk.bridge.markDisconnectedDevice(mac: String, type: otaType, isBinded:boolean, deviceName: String)


// 2. Send data: Protocol library data -> Bluetooth device
// In the bridge agent IDOBridgeDelegate, implement sending the received data through the Bluetooth library, and call the write completion after the sending is completed.
// sdk.bridge.setupBridge(BleDataBrige(), IDOLogType.RELEASE) global registration
      val uuid_service:String = "00000aF0-0000-1000-8000-00805f9b34fb"
      val uuid_characteristic_notify:String = "00000aF7-0000-1000-8000-00805f9b34fb"
      val uuid_characteristic_write:String = "00000aF6-0000-1000-8000-00805f9b34fb"
   class BleDataBrige : IDOBridgeDelegate {

         override fun listenStatusNotification(status: IDOStatusNotification) {
             Logutil.logMessage("bledata","status:$status")
         }

         override fun writeDataToBle(request: IDOBleDataRequest) {
             Logutil.logMessage("bledata","writeDataToBle:${request.data}")
             //This callback is that the sdk will call back the instructions that need to be sent.
             // Through the Bluetooth service, as above, get the bluetoothGatt, characteristic, and then write the data
            
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
                 ?: // DebugLog.p("service is nullllll");
                 return null
             return service.getCharacteristic(characteristicId)
         }

     }
   }


// 3. Receive data: Bluetooth device -> protocol library
After Bluetooth receives the data, it passes the data to sdk, and sdk will parse and return the corresponding request callback result.

  sdk.bridge.receiveDataFromBle(data,bleDevice?.mac,false)

demo:// receives Bluetooth response data
func receiveData(data: ByteArray) {
      sdk.bridge.receiveDataFromBle(data,bleDevice?.mac,false)
}

```