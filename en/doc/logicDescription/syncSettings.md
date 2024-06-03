## iDO device synchronization configuration instructions after binding

#### Choose according to your own product needs (Optional/Multiple Choice)

> #### 1. Required function table judgment:
>
> [Automatic blood oxygen detection](../set/IDOSetSpo2Switch.md)
>
> `setSpo2Switch`
>
> [Body energy switch](../set/IDOSetBodyPowerTurn.md)
> `setBodyPowerTurn`
>
> [Initialize body temperature switch](../set/IDOSetTemperatureSwitch.md)
> `setTemperatureSwitch`
>
> [Breathing switch](../set/IDOSetRRespiRateTurn.md)
> `setRRespiRateTurn`
>
> [Drinking water reminder](../set/IDOSetDrinkWaterRemind.md)
> `setDrinkWaterRemind`
>
> [Set fitness guidance switch](../set/IDOSetFitnessGuidance.md)
> `setFitnessGuidance`
>
> 3 types of heart rate, determine which one to send according to the function table (select one according to the function table)
> [setHeartRateModeSmart](../set/IDOSetHeartRateModeSmart.md), [setHeartMode (old)](../set/IDOSetHeartMode.md), [setHeartRateMode (old)](../set/IDOSetHeartRateModeSmart.md)
>
> [Set the default value of the heart rate interval](../set/IDOSetHeartRateInterval.md)
> `setHeartRateInterval`
>
> Set the sorting of exercise types (more first, according to the function table)
> [setSportSortV3](../set/IDOSetSportSortV3.md), [setSportModeSort (old)](../set/IDOSetSportModeSort.md)
>
> [Set physiological cycle](../set/IDOSetMenstruation.md)
> setMenstruation
>
> [Set physiological cycle reminder](../set/IDOSetMenstruationRemind.md)
> setMenstruationRemind
>
> [Set the switch and threshold of ambient volume](../set/IDOSetV3Noise.md)
> `setV3Noise`
>
> [Set stress switch](../set/IDOSetStressSwitch.md)
> `setStressSwitch`
>
> [Set scientific sleep switch](../set/IDOSetScientificSleepSwitch.md)
> `setScientificSleepSwitch`
>
> [Set voice assistant switch](../set/IDOSetVoiceAssistantOnOff.md)
> `setVoiceAssistantOnOff`
>
> [Set walking reminder](../set/IDOSetWalkRemind.md)
> `setWalkRemind`
>
> [Set hand washing reminder](../set/IDOSetHandWashingReminder.md)
> `setHandWashingReminder`
>
> [Set music switch](../set/IDOSetMusicOnOff.md)
> `setMusicOnOff`
>
> [Set do not disturb mode](../set/IDOSetNotDisturb.md)
> `setNotDisturb`
>
> [Set to find phone](../set/IDOSetFindPhone.md)
> `setFindPhone`
>
> [Set the sports mode recognition switch](../set/IDOSetActivitySwitch.md)
> `setActivitySwitch`
>
> [Set the menu list](../set/IDOSetMenuList.md)
> `setMenuList`
>
> [Set the firmware call quick reply switch](../set/IDOSetCallQuickReplyOnOff.md)
> `setCallQuickReplyOnOff`
>
> [Set the screen brightness](../set/IDOSetScreenBrightness.md)
> `setScreenBrightness`
>
> [Set the screen to light up when you raise your wrist](../set/IDOSetUpHandGesture.md)
> `setUpHandGesture`
>
> [Set the weather switch](../set/IDOSetWeatherSwitch.md)
> `setWeatherSwitch`
>
> 
>
> #### 2. Not according to the function table
>
> [Set default unit](../set/IDOSetUnit.md)
> `setUnit`
>
> [Set user information](../set/IDOSetUserInfo.md)
> `setUserInfo`



## Bind & Unbind

#### Example

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
