# IDO smart bracelet SDK

## Functional Overview

Suitable for iOS/Android devices and supports IDO bracelets to implement Bluetooth connection control framework library

<div style ="display:flex;justify-content: flex-end;" >
   <button class="section" target="section1" show="swift" hide="swift"></button>
   <div style="width:10px"></div>
   <button class="section" target="section2" show="kotlin" hide="kotlin"></button>
</div>


<!--sec data-title="swift" data-id="section1" data-show=true ces-->

## Quick integration

#### Integrate using Cocoapods

Add the following content to the Podfile:

```ruby
source 'https://github.com/idoosmart/IDOSmartSpec.git'
platform:ios, '9.0'

target 'your_target_name1' do
   pod 'IDOSDK-full', '~> 4.0.15'
end
```

Then execute the pod install command in the project root directory to integrate.
To use CocoaPods, please refer to: [CocoaPods Guides](https://guides.cocoapods.org/)

## Initialize SDK

#### Initialize Flutter

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

#### Register SDK

The SDK is divided into three modules: Protocol library, Bluetooth library and Alexa library. **Registration is required before use (register globally once)**

```swift
import protocol_channel

// Register sdk
func registerSDK() {
     // ble (only when using built-in Bluetooth)
     sdk.ble.addBleDelegate(api: self)
     sdk.ble.bluetoothRegister(heartPingSecond: 5, outputToConsole: false)
     sdk.ble.getBluetoothState { [weak self] stateModel in
         self?.bleState = stateModel
         self?.funcPage?.bleState = stateModel
     }

     // protocol library
     sdk.bridge.setupBridge(delegate: self, logType: .release)

     // alexa (no need to connect if you don’t have alexa function)
     sdk.alexa.setupAlexa(delegate: self, clientId: clientId)
}
```



#### Using SDK

  The API of the SDK can be called by the globally defined constant `sdk`

```swift
import protocol_channel

func someMethod() {
     /// Device Information
     sdk.device.xx
    
     /// Menu
     sdk.funcTable.xx
    
     /// Command
     sdk.cmd.xx
    
     /// Bridge
     sdk.bridge.xx
    
     /// Bluetooth (only when using the built-in Bluetooth library)
     sdk.ble.xx
    
     /// Alexa
     sdk.alexa.xx
    
     /// file transfer
     sdk.transfer.xx
    
     /// Message icon
     sdk.messageIcon.xx
    
     /// data synchronization
     sdk.syncData.xx
    
     /// Data exchange
     sdk.dataExchange.xx
    
     /// Device log
     sdk.deviceLog.xx

     /// Common tools, cache
     sdk.tool.xx
}
```

<!--endsec-->



<!--sec data-title="kotlin" data-id="section2" data-show=false ces-->

**android sdk access**

**Use android studio integration**

1. Integrate SDK. SDK is divided into with Bluetooth and without Bluetooth (you can use your own Bluetooth library). Users can choose one according to their needs.

(1) The sdk with Bluetooth library is as follows, a total of 6 files (you can copy it from the lib in example_android demo, the lib contains the latest version)

    flutter_bluetooth_release-4.0.25.aar
   flutter_release-4.0.25.aar
   native_channel_release-4.0.25.aar
   path_provider_android_release-4.0.25.aar
   protocol_channel_release-4.0.25.aar
   protocol_ffi_release-4.0.25.aar

(2) SDK without Bluetooth library, four files in total (you can copy it from the lib in example_android_lite demo, the latest version is in the lib)

flutter_release-4.0.23.aar
native_channel_release-4.0.23.aar
protocol_channel_release-4.0.23.aar
protocol_ffi_release-4.0.23.aar

Copy the downloaded AAR package to the libs directory

Modify the build.gradle(app) file

dependencies {

```
     implementation fileTree(include: ['*.jar', '*.aar'], dir: 'libs') //Integrate sdk
     implementation "io.flutter:flutter_embedding_release:1.0.0-0f359063c487ee70787e58b4b011cbb3c2f53fd6" //sdk files that need to be dependent on
     implementation "io.flutter:arm64_v8a_release:1.0.0-0f359063c487ee70787e58b4b011cbb3c2f53fd6" //sdk files that need to be dependent on
     implementation "io.flutter:armeabi_v7a_release:1.0.0-0f359063c487ee70787e58b4b011cbb3c2f53fd6"implementation //sdk files that need to be dependent on
```

  ....

}

<!--endsec-->

#### Register SDK

The SDK is divided into three modules: Protocol library, Bluetooth library and Alexa library. **Registration is required before use**. Please refer to the demo for details.

```kotlin
import protocol_channel

// Register sdk
func registerSDK() {
    
      sdk.init(this) //Global registration
     // ble (only when using built-in Bluetooth)
     sdk.ble.addBleDelegate(bleDelegate: IDOBleDelegate)
     sdk.ble.getBluetoothState {

     }

     // protocol library
     sdk.bridge.setupBridge( idoBrigeDelegate : IDOBridgeDelegate, type:logType)

     // alexa (if you don’t have alexa function, you don’t need to access it)
     sdk.alexa.setupAlexa(delegate: IDOAlexaDelegate, clientId: clientId)
}
```





#### Using SDK

  The API of the SDK can be called by the globally defined constant `sdk`

```kotlin
import protocol_channel

fun someMethod() {
     /// Device Information
     sdk.device.xx
    
     /// Menu
     sdk.funcTable.xx
    
     /// Command
     sdk.cmd.xx
    
     /// Bridge
     sdk.bridge.xx
    
     /// Bluetooth (only when using the built-in Bluetooth library)
     sdk.ble.xx
    
     /// Alexa
     sdk.alexa.xx
    
     /// file transfer
     sdk.transfer.xx
    
     /// Message icon
     sdk.messageIcon.xx
    
     /// data synchronization
     sdk.syncData.xx
    
     /// Data exchange
     sdk.dataExchange.xx
    
     /// Device log
     sdk.deviceLog.xx

     /// Common tools, cache
     sdk.tool.xx
}
```

<!--endsec-->