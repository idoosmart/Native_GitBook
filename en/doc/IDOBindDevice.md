# Device binding/unbinding



## Attributes

### `isBinding`

Whether it is in the binding (in the binding, switching devices will be restricted)

## method

### `bind(osVersion:onDeviceInfo:onFuncTable:completion:)`

0 Binding failed 1 Binding successful 2 Already bound 3 Authorization code required for binding 4 Binding refused 5 Binding error device 6 Authorization code verification failed 7 Unbinding 8 Binding failed (failed to obtain the menu) 9 Binding Failed (failed to obtain device information)

### `cancelBind()`

Unbind

### appMarkBindResult(success: Bool)

The APP delivers the binding result (only used by devices that require the app to confirm the binding result)

### `unbind(macAddress:isForceRemove:completion:)`

Initiate unbinding

macAddress: device Mac address isForceRemove: forcefully delete the device, delete it even if the device does not respond

### `setAuthCode(code:osVersion:completion:)`

Send authorization pairing code (only for supported devices)

code pairing code osVersion: system version (take the major version number)




## Example

Swift:

```swift
// Binding
sdk.cmd.bind(osVersion: 15) { devInfo in
       print("1 Obtained device information - battLevel: \(devInfo.battLevel)")
   } onFuncTable: { ft in
       print("1Get the menu - alexaSetEasyOperateV3: \(ft.alexaSetEasyOperateV3)")
   } completion: { status in
       switch status {
       case .failed:
           print("\(status)")
           // Binding failed
       case .successful:
           // Binding successful
           print("\(status)")
           print("2 Obtained device information - battLevel: \(sdk.device.battLevel)")
           print("2 Get the function table - alexaSetEasyOperateV3: \(sdk.funcTable.alexaSetEasyOperateV3)")
       case .binded:
           print("\(status)")
       case .needAuth:
           print("\(status)")
       case .refusedBind:
           print("\(status)")
       case .wrongDevice:
           print("\(status)")
       case .authCodeCheckFailed:
           print("\(status)")
       case .canceled:
           print("\(status)")
       case .failedOnGetFunctionTable:
           print("\(status)")
       case .failedOnGetDeviceInfo:
           print("\(status)")
       case .timeout:
           print("\(status)")
       case .agreeDeleteDeviceData:
           print("\(status)")
       case .denyDeleteDeviceData:
           print("\(status)")
       case .timeoutOnNewAccount:
           print("\(status)")
       case .needConfirmByApp:
           print("\(status)")
           Cmds.sendBindResult(isSuccess: true).send { rs in
               if case .success(_) = rs {
                   print("success:")
                   sdk.cmd.appMarkBindResult(success: true)
               }else {
                   print("failure")
                   sdk.cmd.appMarkBindResult(success: false)
               }
           }
       }
   }

// Unbind
sdk.cmd.unbind(macAddress: macAddress, isForceRemove: true, completion: { rs in
     ifrs{
         // Unbinding successful
     } else {
         // Unbinding failed
     }
})
```

Kotlin:

```kotlin
//Bind
  sdk.cmd.bind(15, {
   println("Get device information state$it");
}, {
   println("Get the function table functableinterface state$it");
}, {
   closeProgressDialog()
   when (it) {
     IDOBindStatus.SUCCESSFUL -> {
       toast("bind ok")
       //save bind info
       SPUtil.putAValue(bind_key + device?.macAddress, true)
     }
     IDOBindStatus.FAILED,
     IDOBindStatus.BINDED,
     IDOBindStatus.NEEDAUTH,
     IDOBindStatus.REFUSEDBIND -> {
       println("bind failed: ${it.name}")
       toast("bind failed: ${it.name}")
     }

     else -> {

     }
   }
})
// Unbind
sdk.cmd.unbind(macAddress = macAddress, isForceRemove = true, completion = { rs ->
   if (rs) {
     // Unbinding successful
   } else {
     // Unbinding failed
   }
})
```