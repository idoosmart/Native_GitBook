# 蓝牙库(仅限full版)

### 功能概述

基于原生平台蓝牙库封装，用于扫描外围设备，获取返回设备集合，在列表中显示，选择需要连接的设备，连接成功后返回设备信息以及设备是否处于OTA模式，连接失败则会有一个错误回调。默认扫描信号过滤参数为80，自动扫描连接超时时间为20秒。（注意：仅限full版使用）

<div style ="display:flex;justify-content: flex-end;" >
  <button class="section" target="section1" show="swift" hide="swift"></button>
  <div style="width:10px"></div>
  <button class="section" target="section2" show="kotlin" hide="kotlin"></button>
</div>

## 方法

### `addBleDelegate(api:)`

添加蓝牙代理 [IDOBleDelegate](delegate/IDOBleDelegate.md)

### `addDfuDelegate(api:)`

添加DFU升级 (nordic)

### `bluetoothRegister(heartPingSecond:outputToConsole:)`

注册,程序开始运行调用

delegate 代理 heartPingSecond:心跳包间隔(ios) outputToConsole：控制台输出日志

### `startScan(macAddress:completion:)`

开始搜索 macAddress（Android）:根据Mac地址搜索 返回指定搜索的设备，如未指定返回null

### `scanFilter(deviceName:deviceID:macAddress:uuid:)`

搜索筛选条件

```
deviceName: 只搜索deviceName的设备
deviceID：只搜索deviceID的设备
macAddress：只搜索macAddress的设备
uuid：只搜索uuid的设备
```

### `stopScan()`

停止搜索

### `connect(device:)`

连接 device: Mac地址必传，iOS要带上uuid，最好使用搜索返回的对象

### `autoConnect(device:)`

使用这个重连设备

### `cancelConnect(macAddress:completion:)`

取消连接

### `getBluetoothState(completion:)`

获取蓝牙状态

### `getDeviceState(device:completion:)`

获取设备连接状态

### `writeData(data:device:type:completion:)`

发送数据

```
data:数据
device: 发送数据的设备
type:0 BLE数据, 1 SPP数据
```

### `setBtPair(device:)`

<!--sec data-title="kotlin" data-id="section2" data-show=false ces-->

bt配对（android）

### `cancelPair(device:)`

取消配对（android）

### `connectSPP(btMacAddress:)`

连接SPP

### `disconnectSPP(btMacAddress:)`

断开SPP

<!--endsec-->

### `startNordicDFU(config:)`

发起dfu升级



## 示例

### 注册Bluetooth模块

Swift:

```swift
// 注册蓝牙库
sdk.ble.addBleDelegate(api: <IDOBleDelegate>)
sdk.ble.bluetoothRegister(heartPingSecond: 5, outputToConsole: false)
sdk.ble.getBluetoothState { [weak self] stateModel in
    // 状态监听
}
```

Kotlin:

```kotlin
//注册蓝牙库
sdk.ble.addBleDelegate(IDOBleDelegate)
sdk.ble.bluetoothRegister(false)
sdk.ble.getBluetoothState { 
   //状态监听
}
```



### 代理实现

Swift:

```swift

// 实现代理
extension SomeClass: IDOBleDelegate {

    func scanResult(list: [IDODeviceModel]?) {
       // 扫描设备列表
        print("scanResult list count:\(String(describing: list?.count))")
    }
    
    func bluetoothState(state: IDOBluetoothStateModel) {
        // 蓝牙状态
        print("on bluetoothState callback: \(String(describing: state.scanType?.rawValue))")
    }
    
    func deviceState(state: IDODeviceStateModel) {
        // 设备状态
        print("on deviceState callback: \(String(describing: state.state))")
    }
  
}
```

Kotlin:

```kotlin

// 实现代理
private val bleDelegate = object : IDOBleDelegate {
    
    override fun scanResult(list: List<IDOBleDeviceModel>?) {
        //扫描设备列表
    }

    override fun bluetoothState(state: IDOBluetoothStateModel) {
        //蓝牙状态
    }

    override fun deviceState(state: IDODeviceStateModel) {
        // 设备状态
    }

    override fun stateSPP(state: IDOSppStateModel) {
 
    }

    override fun writeSPPCompleteState(btMacAddress: String) {
    }

}
```

