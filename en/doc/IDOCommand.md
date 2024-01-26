# Directive

Bind/unbind devices, obtain data from devices, and send instructions to settings



## Attributes

### `isBinding`

Whether it is in the binding (in the binding, switching devices will be restricted)

## method

### `bind(osVersion:onDeviceInfo:onFuncTable:completion:)`

0 Binding failed 1 Binding successful 2 Already bound 3 Authorization code required for binding 4 Binding refused 5 Binding error device 6 Authorization code verification failed 7 Unbinding 8 Binding failed (failed to obtain the menu) 9 Binding Failed (failed to obtain device information)

### `cancelBind()`

Unbind

### `unbind(macAddress:isForceRemove:completion:)`

Initiate unbinding

macAddress: device Mac address isForceRemove: forcefully delete the device, delete it even if the device does not respond

### `setAuthCode(code:osVersion:completion:)`

Send authorization pairing code

code pairing code osVersion: system version (take the major version number)

### `setV2CallEvt(contactText:phoneNumber:completion:)`

v2 sends incoming call reminder as well as the incoming call phone number and incoming call contact (implemented by some devices)

- Parameters:
   - contactText: contact name
   - phoneNumber: number
- Returns: Success or not

### `setV2NoticeEvt(type:contactText:phoneNumber:dataText:completion:)`

v2 sends information reminders and information content (implemented by some devices)

- Parameters:
   - type: information type
   - contactText: notification content
   - phoneNumber: number
   - dataText: message content
- Returns: Success or not

### `stopV2CallEvt(completion:)`

v2 sends an incoming call reminder status as the call has been answered, telling the device to stop reminding the user (implemented by some devices)

- Returns: Success or not

### `missedV2MissedCallEvt(completion:)`

v2 sends an incoming call reminder status as call rejected, telling the device to stop reminding the user (implemented by some devices)

- Returns: Success or not



## Basic instructions

#### Obtain

- [getBtName](get/IDOGetBtName.md) - `Get bt bluetooth name`
- [getLiveData](get/IDOGetLiveData.md) - `Get Real-time Data event number`
- [getErrorRecord](get/IDOGetErrorRecord.md) - `Get error record`
- [getHidInfo](get/IDOGetHidInfo.md) - `Get HID Information event number`
- [getGpsInfo](get/IDOGetGpsInfo.md) - `Get GPS Information event number`
- [getVersionInfo](get/IDOGetVersionInfo.md) - `Get version information event number`
- [getMtuInfo](get/IDOGetMtuInfo.md) - `Get MTU Information event number`
- [getAllHealthSwitchState](get/IDOGetAllHealthSwitchState.md) - `Get event number for all health monitoring switches`
- [getGpsStatus](get/IDOGetGpsStatus.md) - `Get GPS Status event number`
- [getUnerasableMeunList](get/IDOGetUnerasableMeunList.md) - `Get non-deletable menu list in firmware event number`
- [getActivitySwitch](get/IDOGetActivitySwitch.md) - `Get event number for activity switch`
- [getUnreadAppReminder](get/IDOGetUnreadAppReminder.md) - `Get unread app reminder switch event number`
- [getFlashBinInfo](get/IDOGetFlashBinInfo.md) - `Get Font Library Information event number`
- [getBtNotice](get/IDOGetBtNotice.md) - `Query BT pairing switch, connection, A2DP connection, HFP connection status (Only Supported on devices with BT Bluetooth) event number`
- [getUpHandGesture](get/IDOGetUpHandGesture.md) - `Get wrist up gesture data event number`
- [getWatchDialId](get/IDOGetWatchDialId.md) - `Get watch ID event number`
- [getNotDisturbStatus](get/IDOGetNotDisturbStatus.md) - `Get Do Not Disturb mode status event number`
- [getMainSportGoal](get/IDOGetMainSportGoal.md) - `Get Set Calorie/Distance/Mid-High Sport Time Goal event number`
- [getBpAlgVersion](get/IDOGetBpAlgVersion.md) - `Get blood pressure algorithm version information event number`
- [getScreenBrightness](get/IDOGetScreenBrightness.md) - `Get screen brightness event number`
- [getHotStartParam](get/IDOGetHotStartParam.md) - `Get Hot Start Parameters event number`
- [getSupportMaxSetItemsNum](get/IDOGetSupportMaxSetItemsNum.md) - `Get maximum number of settings supported by firmware event number`
- [getWalkRemind](get/IDOGetWalkRemind.md) - `Get walk reminder event number`
- [getStepGoal](get/IDOGetStepGoal.md) - `Get daily step goal event number`
- [getDeviceName](get/IDOGetDeviceName.md) - `Get device name event number`
- [getContactReviseTime](get/IDOGetContactReviseTime.md) - `Get firmware local contact file modification time event number`
- [getUpdateStatus](get/IDOGetUpdateStatus.md) - `Get device update status event number`
- [getStressVal](get/IDOGetStressVal.md) - `Get stress value event number`
- [getHeartRateMode](get/IDOGetHeartRateMode.md) - `Get Heart Rate Monitoring Mode event number`
- [getBatteryInfo](get/IDOGetBatteryInfo.md) - `Get battery information event number`
- [getDeviceLogState](get/IDOGetDeviceLogState.md) - `Get device log state event number`
- [getDownloadLanguage](get/IDOGetDownloadLanguage.md) - `Get Download Language Support`
- [getMenuList](get/IDOGetMenuList.md) - `Get Supported Menu List`
- [getNoticeStatus](get/IDOGetNoticeStatus.md) - `Get notification center status event number`
- [getAlarm](get/IDOGetAlarm.md) - `Getting Alarms for V3APP Devices`
- [getHabitInfo](get/IDOGetHabitInfo.md) - `Get User Habit Information in V3`
- [getBleMusicInfo](get/IDOGetBleMusicInfo.md) - `Get Firmware Song Names and Folders`
- [getWatchDialInfo](get/IDOGetWatchDialInfo.md) - `Get Screen Information`
- [getWatchListV3](get/IDOGetWatchListV3.md) - `Getting watch face list for V3 (New)`
- [getWatchListV2](get/IDOGetWatchListV2.md) - `Get Watch Face List in V2`
- [getLanguageLibrary](get/IDOGetLanguageLibrary.md) - `Get Language Library List`
- [getBleBeep](get/IDOGetBleBeep.md) - `Getting firmware local beep file information for V3`



#### set up

- [Set time](set/IDOSetDateTime.md)
- [setBleVoice](set/IDOSetBleVoice.md) - `Set phone volume for device event number`
- [setGpsControl](set/IDOSetGpsControl.md) - `Control GPS event number`
- [setHeartRateModeSmart](set/IDOSetHeartRateModeSmart.md) - `Set Smart Heart Rate Mode Event`
- [setStressCalibration](set/IDOSetStressCalibration.md) - `Set Stress Calibration Event Code`
- [setHandWashingReminder](set/IDOSetHandWashingReminder.md) - `Set Hand Washing Reminder Event`
- [setSportGoal](set/IDOSetSportGoal.md) - `Set exercise goal event`
- [setWeatherData](set/IDOSetWeatherData.md) - `Set weather data event number`
- [setUnreadAppReminder](set/IDOSetUnreadAppReminder.md) - `Unread message reminder switch event number`
- [setNotificationStatus](set/IDOSetNotificationStatus.md) - `Notification app status setting event`
- [setScientificSleepSwitch](set/IDOSetScientificSleepSwitch.md) - `Scientific sleep switch setting event`
- [setBpCalibration](set/IDOSetBpCalibration.md) - `Blood pressure calibration event number`
- [setLostFind](set/IDOSetLostFind.md) - `Set Lost Find Event`
- [setWatchDial](set/IDOSetWatchDial.md) - `Set watch face event number`
- [setWeatherSwitch](set/IDOSetWeatherSwitch.md) - `Set weather switch event number`
- [setUnit](set/IDOSetUnit.md) - `Set Unit event number`
- [setFindPhone](set/IDOSetFindPhone.md) - `Set Find Phone`
- [setOverFindPhone](set/IDOSetOverFindPhone.md) - `Stop Find Phone`
- [setOnekeySOS](set/IDOSetOnekeySOS.md) - `Set the one-touch calling event number`
- [setSportModeSelect](set/IDOSetSportModeSelect.md) - `Set sport mode select event number`
- [setSportModeSort](set/IDOSetSportModeSort.md) - `Set Sport Mode Sorting`
- [setLongSit](set/IDOSetLongSit.md) - `Set Long Sit Event`
- [setHeartRateMode](set/IDOSetHeartRateMode.md) - `Set Heart Rate Mode Event`
- [setBodyPowerTurn](set/IDOSetBodyPowerTurn.md) - `Set body power switch event number`
- [setRRespiRateTurn](set/IDOSetRRespiRateTurn.md) - `Respiration rate switch setting event`
- [setV3Noise](set/IDOSetV3Noise.md) - `Set Environmental Noise Volume On/Off and Threshold Event`
- [setWeatherSunTime](set/IDOSetWeatherSunTime.md) - `Set sunrise and sunset time event number`
- [setShortcut](set/IDOSetShortcut.md) - `Set shortcut`
- [setNoticeStatus](set/IDOSetNoticeStatus.md) - `Set Notification Center Event`
- [setTemperatureSwitch](set/IDOSetTemperatureSwitch.md) - `Set Night-time Temperature Switch Event Code`
- [setSleepPeriod](set/IDOSetSleepPeriod.md) - `Set sleep period event`
- [setUpHandGesture](set/IDOSetUpHandGesture.md) - `Raise-to-wake gesture event number`
- [setTakingMedicineReminder](set/IDOSetTakingMedicineReminder.md) - `Set Taking Medicine Reminder Event Code`
- [setSpo2Switch](set/IDOSetSpo2Switch.md) - `Set SpO2 switch event`
- [setWeatherCityName](set/IDOSetWeatherCityName.md) - `Set weather city name event number`
- [setAlarm](set/IDOSetAlarm.md) - `Getting Alarms for V3APP Devices`
- [setFitnessGuidance](set/IDOSetFitnessGuidance.md) - `Fitness Guidance Event`
- [setDisplayMode](set/IDOSetDisplayMode.md) - `Display mode event number`
- [setBpMeasurement](set/IDOSetBpMeasurement.md) - `Blood pressure measurement event number`
- [setMusicOnOff](set/IDOSetMusicOnOff.md) - `Set Music On/Off Event`
- [setSendRunPlan](set/IDOSetSendRunPlan.md) - `App issued running plan (exercise plan) event number`
- [setWeatherV3](set/IDOSetWeatherV3.md) - `Send the v3 weather protocol event number under v3`
- [musicControl](set/IDOMusicControl.md) - `Music control event number`
- [setMusicOperate](set/IDOSetMusicOperate.md) - `Operation for songs or folders event`
- [noticeMessageV3](set/IDONoticeMessageV3.md) - `Notification message reminder event number`
- [setNoticeMessageState](set/IDOSetNoticeMessageState.md) - `Setting Notification Status for a Single App`
- [setNoticeAppName](set/IDOSetNoticeAppName.md) - `V3 dynamic notification message event number`
- [setWorldTimeV3](set/IDOSetWorldTimeV3.md) - `v3 set v3 world time`
- [setSchedulerReminder](set/IDOSetSchedulerReminder.md) - `Schedule Reminder`
- [setBpCalControlV3](set/IDOSetBpCalControlV3.md) - `Blood Pressure Calibration Control`
- [setWatchFaceData](set/IDOSetWatchFaceData.md) - `Set Watch Face`
- [setSyncContact](set/IDOSetSyncContact.md) - `Synchronization Protocol Bluetooth Call Common Contacts`
- [setSportParamSort](set/IDOSetSportParamSort.md) - `Set and Query Sports Sub-item Data Sorting`
- [setSport100Sort](set/IDOSetSport100Sort.md) - `Set and Query 100 Sports Sorting`
- [setMainUISortV3](set/IDOSetMainUISortV3.md) - `Setting and Query Sorting of Main UI Controls`
- [setHistoricalMenstruation](set/IDOSetHistoricalMenstruation.md) - `Menstrual historical data delivery event number`
- [setLongCityNameV3](set/IDOSetLongCityNameV3.md) - `V3 Setting the Name of a Sports City event number`
- [setHeartMode](set/IDOSetHeartMode.md) - `Set Heart Rate Mode V3`
- [setVoiceReplyText](set/IDOSetVoiceReplyText.md) - `V3 voice reply text event number`
- [setWatchDialSort](set/IDOSetWatchDialSort.md) - `Set watch dial sort event`
- [setWalkRemindTimes](set/IDOSetWalkRemindTimes.md) - `Set multiple walk reminder times event number`
- [setWallpaperDialReply](set/IDOSetWallpaperDialReply.md) - `Set wallpaper dial list event number`
- [setDateTime](set/IDOSetDateTime.md) - `Set Time`
- [Set user information](set/IDOSetUserInfo.md) - `setUserInfo`
- [Reboot the device](set/IDOReboot.md) - `reboot`
- [Factory reset](set/IDOFactoryReset.md) - `factoryReset`
- [Control search device start](set/IDOFindDeviceStart.md) - `findDeviceStart`
- [Control finding device ends](set/IDOFindDeviceStop.md) - `findDeviceStop`
- [Start taking photos (app -> ble)](set/IDOPhotoStart.md) - `photoStart`
- [End photo taking (app -> ble)](set/IDOPhotoStop.md) - `photoStop`
- [Set up left and right hands](set/IDOSetHand.md) - `setHand`
- [Set screen brightness](set/IDOSetScreenBrightness.md) - `setScreenBrightness`
- [Enter upgrade mode](set/IDOOtaStart.md) - `otaStart`
- [Set heart rate zone](set/IDOSetHeartRateInterval.md) - `setHeartRateInterval`
- [Set calorie and distance goals (set daily three rings)](set/IDOSetCalorieDistanceGoal.md) - `setCalorieDistanceGoal`
- [Set reminders to move around](set/IDOSetWalkRemind.md) - `setWalkRemind`
- [Set menstrual period](set/IDOSetMenstruation.md) - `setMenstruation`




## Bind & Unbind

#### Example

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
//binding
 sdk.cmd.bind(15, {
  println("The device information is obtained state$it");
}, {
  println("The function list is obtained functableinterface state$it");
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
// unbundle
sdk.cmd.unbind(macAddress = macAddress, isForceRemove = true, completion = { rs ->
  if (rs) {
    // Unbind successfully
  } else {
    // Unbinding failure
  }
})
```

