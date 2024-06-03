# IDO 智能手环 SDK

## 功能概述

适用于iOS/Android设备并支持IDO公司的手环，实现蓝牙连接控制框架库

<div style ="display:flex;justify-content: flex-end;" >
  <button class="section" target="section1" show="swift" hide="swift"></button>
  <div style="width:10px"></div>
  <button class="section" target="section2" show="kotlin" hide="kotlin"></button>
</div>

<!--sec data-title="swift" data-id="section1" data-show=true ces-->

## 快速集成

#### 使用 Cocoapods 集成

在Podfile文件中添加以下内容：

```ruby
source 'https://github.com/idoosmart/IDOSmartSpec.git'
platform :ios, '9.0'

target 'your_target_name1' do
  pod 'IDOSDK-full', '~> 4.0.15'
end
```

然后在项目根目录下执行 pod install 命令，集成。
CocoaPods的使用请参考：[CocoaPods Guides](https://guides.cocoapods.org/)

## 初始化 SDK

#### 初始化Flutter

```swift
import Flutter
import FlutterPluginRegistrant

class AppDelegate: UIResponder, UIApplicationDelegate {
    private var flutterEngine: FlutterEngine?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.initFlutterEngine()
        ...
        return true
    }
}

extension AppDelegate {
  private func initFlutterEngine() {
      self.flutterEngine = FlutterEngine(name: "io.flutter", project: nil)
      self.flutterEngine?.run(withEntrypoint: nil)
      if let engine = flutterEngine {
          GeneratedPluginRegistrant.register(with: engine)
          print("flutterEngine finished")
      } else {
          print("engine is null")
          assert(false, "engine is null")
      }
  }
}
```

#### 注册SDK

SDK分为三个模块：Protocol 协议库、Bluetooth库及Alexa库，**使用前需要进行注册（全局注册一次）**

```swift
import protocol_channel

// Register sdk
func registerSDK() {
    // ble（仅限于使用内置蓝牙）
    sdk.ble.addBleDelegate(api: self)
    sdk.ble.bluetoothRegister(heartPingSecond: 5, outputToConsole: false)
    sdk.ble.getBluetoothState { [weak self] stateModel in
        self?.bleState = stateModel
        self?.funcPage?.bleState = stateModel
    }

    // protocol library
    sdk.bridge.setupBridge(delegate: self, logType: .release)

    // alexa (没有alexa功能就不需要接入)
    sdk.alexa.setupAlexa(delegate: self, clientId: clientId)
}
```



#### 使用SDK

 SDK的API，由全局定义常量`sdk`进行调用即可

```swift
import protocol_channel

func someMethod() {
    /// 设备信息
    sdk.device.xx
    
    /// 功能表
    sdk.funcTable.xx
    
    /// 指令
    sdk.cmd.xx
    
    /// 桥接
    sdk.bridge.xx
    
    /// 蓝牙 （仅限使用内置蓝牙库）
    sdk.ble.xx
    
    /// Alexa
    sdk.alexa.xx
    
    /// 文件传输
    sdk.transfer.xx
    
    /// 消息图标
    sdk.messageIcon.xx
    
    /// 数据同步
    sdk.syncData.xx
    
    /// 数据交换
    sdk.dataExchange.xx
    
    /// 设备日志
    sdk.deviceLog.xx

    /// 常用工具、缓存
    sdk.tool.xx
}
```

<!--endsec-->



<!--sec data-title="kotlin" data-id="section2" data-show=false ces-->

**android sdk 接入**

**使用android studio 集成**

1.集成sdk , sdk 分为带蓝牙和不带蓝牙（可以使用自己的蓝牙库），用户根据需求选择一种

（1）带蓝牙库的sdk如下，共6个文件（可以从example_android   demo 里面的lib 拷贝，lib 里面有最新版本）

   flutter_bluetooth_release-4.0.25.aar
  flutter_release-4.0.25.aar
  native_channel_release-4.0.25.aar
  path_provider_android_release-4.0.25.aar
  protocol_channel_release-4.0.25.aar
  protocol_ffi_release-4.0.25.aar

（2）不带蓝牙库的sdk,共四个文件（可以从example_android_lite   demo 里面的lib 拷贝，lib 里面有最新版本）

flutter_release-4.0.23.aar
native_channel_release-4.0.23.aar
protocol_channel_release-4.0.23.aar
protocol_ffi_release-4.0.23.aar

将下载的 AAR 包复制到 libs 目录下

修改 build.gradle(app) 文件

dependencies {

```
    implementation fileTree(include: ['*.jar', '*.aar'], dir: 'libs')  //集成sdk 
    implementation "io.flutter:flutter_embedding_release:1.0.0-0f359063c487ee70787e58b4b011cbb3c2f53fd6"  //sdk 需要依赖的文件
    implementation "io.flutter:arm64_v8a_release:1.0.0-0f359063c487ee70787e58b4b011cbb3c2f53fd6"         //sdk 需要依赖的文件
    implementation "io.flutter:armeabi_v7a_release:1.0.0-0f359063c487ee70787e58b4b011cbb3c2f53fd6"implementation //sdk 需要依赖的文件
```

 ....

}

<!--endsec-->

#### 注册SDK

SDK分为三个模块：Protocol 协议库、Bluetooth库及Alexa库，**使用前需要进行注册**,具体参考demo 

```kotlin
import protocol_channel

// Register sdk
func registerSDK() {
    
     sdk.init(this) //全局注册
    // ble（仅限于使用内置蓝牙）
    sdk.ble.addBleDelegate(bleDelegate: IDOBleDelegate)
    sdk.ble.getBluetoothState {

    }

    // protocol library
    sdk.bridge.setupBridge( idoBrigeDelegate : IDOBridgeDelegate, type:logType)

    // alexa (没有alexa功能就不需要接入)
    sdk.alexa.setupAlexa(delegate: IDOAlexaDelegate, clientId: clientId)
}
```





#### 使用SDK

 SDK的API，由全局定义常量`sdk`进行调用即可

```kotlin
import protocol_channel

fun someMethod() {
    /// 设备信息
    sdk.device.xx
    
    /// 功能表
    sdk.funcTable.xx
    
    /// 指令
    sdk.cmd.xx
    
    /// 桥接
    sdk.bridge.xx
    
    /// 蓝牙 （仅限使用内置蓝牙库）
    sdk.ble.xx
    
    /// Alexa
    sdk.alexa.xx
    
    /// 文件传输
    sdk.transfer.xx
    
    /// 消息图标
    sdk.messageIcon.xx
    
    /// 数据同步
    sdk.syncData.xx
    
    /// 数据交换
    sdk.dataExchange.xx
    
    /// 设备日志
    sdk.deviceLog.xx

    /// 常用工具、缓存
    sdk.tool.xx
}
```

<!--endsec-->



