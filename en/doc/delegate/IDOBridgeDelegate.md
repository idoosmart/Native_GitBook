# Bridge Delegate 


# `IDOBridgeDelegate`

 is used to bridge the Bluetooth library and protocol library to implement Bluetooth data and status transmission 

## Methods

### `listenStatusNotification(status:)`

Listening status notification ( SDK)

 - Parameters:
 - status: [IDOStatusNotification](../model/IDOStatusNotification.md)

### `listenDeviceNotification(model:)`

Listen to device active notification/control events (device)

 - Parameters:
 - model: [IDODeviceNotificationModel](../model/IDODeviceNotificationModel.md) Device notification entity 

### `checkDeviceBindState(macAddress:)`

Query the binding status according to the device macAddress (provided by the APP) true: bound, false: not bound 

 - Parameters: 
 - macAddress: The mac address of the currently connected device 



### Proxy implementation 

Swift:

```swift
// Implement proxy 
extension SomeClass: IDOBridgeDelegate {
 
 // Listen to SDK status notification 
 func listenStatusNotification(status: IDOStatusNotification) {
   print("StatusNotification: \(status)")
   NotificationCenter.default.post(name: "onSdkStatusChanged", object: status)
 }

 // Listen for device active notification/control events
 func listenDeviceNotification(model: IDODeviceNotificationModel) {
   print("DeviceNotification: \(model)")
   NotificationCenter.default.post(name: "onSdkDeviceStateChanged", object : model)
 }
 
 // APP provides device binding status. This method will be called when the device is connected via Bluetooth. How to return true will lead to quick configuration (get device menu, device information, third-level version number, update watch time, etc.) 
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
 
 // Listen to SDK status notification 
 override fun listenStatusNotification(status: IDOStatusNotification) {
	 println("listenStatusNotification $status") ;
 }
 
 // Listen for device active notification/control events
 override fun listenDeviceNotification(status: IDODeviceNotificationModel) {
	 println("listenDeviceNotification $status");
 }
 
 // APP provides device binding status and device Bluetooth connection This method will be called. How to return true will lead to quick configuration (get device menu, device information, third-level version number, update watch time, etc.) 
 override fun checkDeviceBindState(macAddress: String): Boolean {
	 return bindState( )

 }

}
```

