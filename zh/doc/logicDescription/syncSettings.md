## iDO设备绑定后同步配置说明



#### 结合自身产品需求选择（可选/多选）

> #### 1、需功能表判断：
>
> [血氧自动检测](../set/IDOSetSpo2Switch.md)
>
> `setSpo2Switch`
>
> [身体能量开关](../set/IDOSetBodyPowerTurn.md)
> `setBodyPowerTurn`
>
> [初始化体温开关](../set/IDOSetTemperatureSwitch.md)
> `setTemperatureSwitch`
>
> [呼吸开关](../set/IDOSetRRespiRateTurn.md)
> `setRRespiRateTurn`
>
> [喝水提醒](../set/IDOSetDrinkWaterRemind.md)
> `setDrinkWaterRemind`
>
> [设置健身指导开关](../set/IDOSetFitnessGuidance.md)
> `setFitnessGuidance`
>
> 心率3种 根据功能表判断发那种（根据功能表多选一）
> [setHeartRateModeSmart](../set/IDOSetHeartRateModeSmart.md)、[setHeartMode(旧)](../set/IDOSetHeartMode.md)、[setHeartRateMode(旧)](../set/IDOSetHeartRateModeSmart.md)
>
> [设置心率区间默认值](../set/IDOSetHeartRateInterval.md)
> `setHeartRateInterval`
>
> 设置运动类型排序（根据功能表多先一）
> [setSportSortV3](../set/IDOSetSportSortV3.md)、[setSportModeSort(旧)](../set/IDOSetSportModeSort.md)
>
> [设置生理周期](../set/IDOSetMenstruation.md)
> setMenstruation
>
> [设置生理周期提醒](../set/IDOSetMenstruationRemind.md)
> setMenstruationRemind
>
> [设置环境音量的开关和阀值](../set/IDOSetV3Noise.md)
> `setV3Noise`
>
> [设置压力开关](../set/IDOSetStressSwitch.md)
> `setStressSwitch`
>
> [设置科学睡眠开关](../set/IDOSetScientificSleepSwitch.md)
> `setScientificSleepSwitch`
>
> [设置语音助手开关](../set/IDOSetVoiceAssistantOnOff.md)
> `setVoiceAssistantOnOff`
>
> [设置走动提醒](../set/IDOSetWalkRemind.md) 
> `setWalkRemind`
>
> [设置洗手提醒](../set/IDOSetHandWashingReminder.md)
> `setHandWashingReminder`
>
> [设置音乐开关](../set/IDOSetMusicOnOff.md)
> `setMusicOnOff`
>
> [设置勿扰模式](../set/IDOSetNotDisturb.md)
> `setNotDisturb`
>
> [设置寻找手机](../set/IDOSetFindPhone.md)
> `setFindPhone`
>
> [设置运动模式识别开关](../set/IDOSetActivitySwitch.md)
> `setActivitySwitch`
>
> [设置菜单列表](../set/IDOSetMenuList.md)
> `setMenuList`
>
> [设置固件来电快捷回复开关](../set/IDOSetCallQuickReplyOnOff.md)
> `setCallQuickReplyOnOff`
>
> [设置屏幕亮度](../set/IDOSetScreenBrightness.md)
> `setScreenBrightness`
>
> [设置抬腕亮屏](../set/IDOSetUpHandGesture.md)
> `setUpHandGesture`
>
> [设置天气开关](../set/IDOSetWeatherSwitch.md)
> `setWeatherSwitch`
>
> 
>
> #### 2、不根据功能表
>
> [设置默认单位](../set/IDOSetUnit.md)
> `setUnit`
>
> [设置用户信息](../set/IDOSetUserInfo.md)
> `setUserInfo`






## 绑定 & 解绑

#### 示例

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

