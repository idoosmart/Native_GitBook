# 设备绑定/解绑



## 属性

### `isBinding`

是否在绑定中 (绑定中，切换设备将受到限制）

## 方法

### `bind(osVersion:onDeviceInfo:onFuncTable:completion:)`

0 绑定失败 1绑定成功 2已经绑定 3需要授权码绑定 4拒绝绑定 5绑定错误设备 6授权码校验失败 7取消绑定 8绑定失败（获取功能表失败) 9绑定失败（获取设备信息失败)

### `cancelBind()`

取消绑定

### appMarkBindResult(success: Bool)

APP下发绑定结果(仅限需要app确认绑定结果的设备使用)

### `unbind(macAddress:isForceRemove:completion:)`

发起解绑

macAddress: 设备Mac地址 isForceRemove：强制删除设备，设备无响应也删除

### `setAuthCode(code:osVersion:completion:)`

发送授权配对码 (仅限支持设备使用)

code 配对码 osVersion: 系统版本 (取主版本号)




## 示例

Swift:

```swift
// 绑定
sdk.cmd.bind(osVersion: 15) { devInfo in
      print("1获取到设备信息 - battLevel: \(devInfo.battLevel)")
  } onFuncTable: { ft in
      print("1获取到功能表 - alexaSetEasyOperateV3: \(ft.alexaSetEasyOperateV3)")
  } completion: { status in
      switch status {
      case .failed:
          print("\(status)")
          // 绑定失败
      case .successful:
          // 绑定成功
          print("\(status)")
          print("2获取到设备信息 - battLevel: \(sdk.device.battLevel)")
          print("2获取到功能表 - alexaSetEasyOperateV3: \(sdk.funcTable.alexaSetEasyOperateV3)")
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

// 解绑
sdk.cmd.unbind(macAddress: macAddress, isForceRemove: true, completion: { rs in
    if rs {
        // 解绑成功
    } else {
        // 解绑失败
    }
})
```

Kotlin:

```kotlin
//绑定
 sdk.cmd.bind(15, {
  println("获取到设备信息 state$it");
}, {
  println("获取到功能表 functableinterface state$it");
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
// 解绑
sdk.cmd.unbind(macAddress = macAddress, isForceRemove = true, completion = { rs ->
  if (rs) {
    // 解绑成功
  } else {
    // 解绑失败
  }
})
```

