# Bluetooth library (Only available in full version)

### Functional Overview

Based on the native platform Bluetooth library package, it is used to scan peripheral devices, obtain the returned device collection, display it in the list, select the device that needs to be connected, and return the device information and whether the device is in OTA mode after the connection is successful. If the connection fails, there will be an error callback. . The default scanning signal filtering parameter is 80, and the automatic scanning connection timeout is 20 seconds. (Note: Only available in the full version)

<div style ="display:flex;justify-content: flex-end;" >
   <button class="section" target="section1" show="swift" hide="swift"></button>
   <div style="width:10px"></div>
   <button class="section" target="section2" show="kotlin" hide="kotlin"></button>
</div>


## Methods

### `addBleDelegate(api:)`

Add Bluetooth proxy [IDOBleDelegate](delegate/IDOBleDelegate.md)

### `addDfuDelegate(api:)`

Add DFU upgrade (nordic)

### `bluetoothRegister(heartPingSecond:outputToConsole:)`

Register, the program starts running and calls

delegate agent heartPingSecond: heartbeat packet interval (ios) outputToConsole: console output log

### `startScan(macAddress:completion:)`

Start searching macAddress (Android): Search based on Mac address. Returns the specified search device. If not specified, returns null.

### `scanFilter(deviceName:deviceID:macAddress:uuid:)`

Search filters

```
deviceName: only search for devices with deviceName
deviceID: only search for devices with deviceID
macAddress: Only search for devices with macAddress
uuid: Only search devices with uuid
```

### `stopScan()`

Stop search

### `connect(device:)`

Connection device: Mac address must be passed, iOS must bring uuid, it is best to use the object returned by search

### `autoConnect(device:)`

Use this to reconnect the device

### `cancelConnect(macAddress:completion:)`

Cancel connection

### `getBluetoothState(completion:)`

Get Bluetooth status

### `getDeviceState(device:completion:)`

Get device connection status

### `writeData(data:device:type:completion:)`

send data

```
data:data
device: device sending data
type:0 BLE data, 1 SPP data
```

### `setBtPair(device:)`

<!--sec data-title="kotlin" data-id="section2" data-show=false ces-->

bt pairing (android)

### `cancelPair(device:)`

Unpair (android)

### `connectSPP(btMacAddress:)`

Connect SPP

### `disconnectSPP(btMacAddress:)`

Disconnect SPP

<!--endsec-->

### `startNordicDFU(config:)`

Initiate dfu upgrade



## Example

### Register Bluetooth module

Swift:

```swift
//Register Bluetooth library
sdk.ble.addBleDelegate(api: <IDOBleDelegate>)
sdk.ble.bluetoothRegister(heartPingSecond: 5, outputToConsole: false)
sdk.ble.getBluetoothState { [weak self] stateModel in
     //Status monitoring
}
```

Kotlin:

```kotlin
//Register Bluetooth library
sdk.ble.addBleDelegate(IDOBleDelegate)
sdk.ble.bluetoothRegister(false)
sdk.ble.getBluetoothState {
    //Status monitoring
}
```



### Agent implementation

Swift:

```swift
// implement proxy
extension SomeClass: IDOBleDelegate {

     func scanResult(list: [IDODeviceModel]?) {
        //Scan device list
         print("scanResult list count:\(String(describing: list?.count))")
     }
    
     func bluetoothState(state: IDOBluetoothStateModel) {
         //Bluetooth status
         print("on bluetoothState callback: \(String(describing: state.scanType?.rawValue))")
     }
    
     func deviceState(state: IDODeviceStateModel) {
         // device status
         print("on deviceState callback: \(String(describing: state.state))")
     }
  
}
```

Kotlin:

```kotlin
// implement proxy
private val bleDelegate = object : IDOBleDelegate {
    
     override fun scanResult(list: List<IDOBleDeviceModel>?) {
         //Scan device list
     }

     override fun bluetoothState(state: IDOBluetoothStateModel) {
         //Bluetooth status
     }

     override fun deviceState(state: IDODeviceStateModel) {
         // device status
     }

     override fun stateSPP(state: IDOSppStateModel) {
 
     }

     override fun writeSPPCompleteState(btMacAddress: String) {
     }

}
```