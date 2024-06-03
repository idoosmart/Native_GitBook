# 桥接代理


# `IDOBridgeDelegate`

用于桥接蓝牙库和协议库，实现蓝牙数据、状态传输

## Methods

### `listenStatusNotification(status:)`

监听状态通知（SDK)

- Parameters:
  - status: [IDOStatusNotification](../model/IDOStatusNotification.md)

### `listenDeviceNotification(model:)`

监听设备主动通知/控制事件 (设备)

- Parameters:
  - model: [IDODeviceNotificationModel](../model/IDODeviceNotificationModel.md) 设备通知实体

### `checkDeviceBindState(macAddress:)`

根据设备macAddress查询绑定状态（由APP端提供） true: 已绑定，false：未绑定

- Parameters:
  - macAddress: 当前连接设备的mac地址



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
  
  // APP提供设备绑定状态, 设备蓝牙连接时会调用该方法，如何返回true，将会走快速配置（获取设备功能表、设备信息、三级版本号、更新手表时间等）
  func checkDeviceBindState(macAddress: String) -> Bool {
        let isBinded = UserDefaults.standard.isBind(macAddress)
        print("checkDeviceBindState mac\(macAddress) isBinded:\(isBinded)")
        return isBinded
    }
}

```

Kotlin:

```kotlin
class BleData : IDOBridgeDelegate {
  
				// 监听SDK状态通知
        override fun listenStatusNotification(status: IDOStatusNotification) {
            println("listenStatusNotification $status");
        }
  
				// 监听设备主动通知/控制事件
        override fun listenDeviceNotification(status: IDODeviceNotificationModel) {
            println("listenDeviceNotification $status");
        }
  			
  			// APP提供设备绑定状态, 设备蓝牙连接时会调用该方法，如何返回true，将会走快速配置（获取设备功能表、设备信息、三级版本号、更新手表时间等）
  			override fun checkDeviceBindState(macAddress: String): Boolean {
            return bindState()

        }

}
```

