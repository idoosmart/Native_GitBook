# 指令

绑定/解绑设备、从设备获取数据、给设置发送指令



## 属性

### `isBinding`

是否在绑定中 (绑定中，切换设备将受到限制）

## 方法

### `bind(osVersion:onDeviceInfo:onFuncTable:completion:)`

0 绑定失败 1绑定成功 2已经绑定 3需要授权码绑定 4拒绝绑定 5绑定错误设备 6授权码校验失败 7取消绑定 8绑定失败（获取功能表失败) 9绑定失败（获取设备信息失败)

### `cancelBind()`

取消绑定

### `unbind(macAddress:isForceRemove:completion:)`

发起解绑

macAddress: 设备Mac地址 isForceRemove：强制删除设备，设备无响应也删除

### `setAuthCode(code:osVersion:completion:)`

发送授权配对码

code 配对码 osVersion: 系统版本 (取主版本号)

### `setV2CallEvt(contactText:phoneNumber:completion:)`

v2发送来电提醒以及来电电话号码和来电联系人(部分设备实现)

- Parameters:
  - contactText: 联系人名称
  - phoneNumber: 号码
- Returns: 是否成功

### `setV2NoticeEvt(type:contactText:phoneNumber:dataText:completion:)`

v2发送信息提醒以及信息内容(部分设备实现)

- Parameters:
  - type: 信息类型
  - contactText: 通知内容
  - phoneNumber: 号码
  - dataText: 消息内容
- Returns: 是否成功

### `stopV2CallEvt(completion:)`

v2发送来电提醒状态为来电已接, 告诉设备停止提醒用户(部分设备实现)

- Returns: 是否成功

### `missedV2MissedCallEvt(completion:)`

v2发送来电提醒状态为来电已拒, 告诉设备停止提醒用户(部分设备实现)

- Returns: 是否成功



## 基础指令

#### 获取

- [获取bt蓝牙名称](get/IDOGetBtName.md) - `getBtName`
- [获得实时数据](get/IDOGetLiveData.md) - `getLiveData`
- [获取错误记录](get/IDOGetErrorRecord.md) - `getErrorRecord`
- [获取HID信息](get/IDOGetHidInfo.md) - `getHidInfo`
- [获取gps信息](get/IDOGetGpsInfo.md) - `getGpsInfo`
- [获取版本信息](get/IDOGetVersionInfo.md) - `getVersionInfo`
- [获取mtu信息](get/IDOGetMtuInfo.md) - `getMtuInfo`
- [获取所有的健康监测开关](get/IDOGetAllHealthSwitchState.md) - `getAllHealthSwitchState`
- [获取gps状态](get/IDOGetGpsStatus.md) - `getGpsStatus`
- [获取固件不可删除的快捷应用列表](get/IDOGetUnerasableMeunList.md) - `getUnerasableMeunList`
- [运动模式自动识别开关获取](get/IDOGetActivitySwitch.md) - `getActivitySwitch`
- [获取红点提醒开关](get/IDOGetUnreadAppReminder.md) - `getUnreadAppReminder`
- [获取字库信息](get/IDOGetFlashBinInfo.md) - `getFlashBinInfo`
- [查询bt配对开关、连接、a2dp连接、hfp连接状态(仅支持带bt蓝牙的设备)](get/IDOGetBtNotice.md) - `getBtNotice`
- [获取抬腕数据](get/IDOGetUpHandGesture.md) - `getUpHandGesture`
- [获取表盘id](get/IDOGetWatchDialId.md) - `getWatchDialId`
- [获取勿扰模式状态](get/IDOGetNotDisturbStatus.md) - `getNotDisturbStatus`
- [获取设置的卡路里/距离/中高运动时长 主界面](get/IDOGetMainSportGoal.md) - `getMainSportGoal`
- [获取血压算法三级版本号信息事件号](get/IDOGetBpAlgVersion.md) - `getBpAlgVersion`
- [获取屏幕亮度](get/IDOGetScreenBrightness.md) - `getScreenBrightness`
- [获取热启动参数](get/IDOGetHotStartParam.md) - `getHotStartParam`
- [获取固件支持的详情最大设置数量](get/IDOGetSupportMaxSetItemsNum.md) - `getSupportMaxSetItemsNum`
- [获取走动提醒](get/IDOGetWalkRemind.md) - `getWalkRemind`
- [获取全天步数目标](get/IDOGetStepGoal.md) - `getStepGoal`
- [获取手表名字](get/IDOGetDeviceName.md) - `getDeviceName`
- [获取固件本地保存联系人文件修改时间](get/IDOGetContactReviseTime.md) - `getContactReviseTime`
- [获取设备升级状态](get/IDOGetUpdateStatus.md) - `getUpdateStatus`
- [获取压力值](get/IDOGetStressVal.md) - `getStressVal`
- [获取心率监测模式](get/IDOGetHeartRateMode.md) - `getHeartRateMode`
- [获取电池信息](get/IDOGetBatteryInfo.md) - `getBatteryInfo`
- [获取设备的日志状态](get/IDOGetDeviceLogState.md) - `getDeviceLogState`
- [获取下载语言支持](get/IDOGetDownloadLanguage.md) - `getDownloadLanguage`
- [获取设备支持的列表](get/IDOGetMenuList.md) - `getMenuList`
- [获取通知中心开关](get/IDOGetNoticeStatus.md) - `getNoticeStatus`
- [app获取ble的闹钟](get/IDOGetAlarm.md) - `getAlarm`
- [获取用户习惯信息](get/IDOGetHabitInfo.md) - `getHabitInfo`
- [获取固件的歌曲名和文件夹](get/IDOGetBleMusicInfo.md) - `getBleMusicInfo`
- [获取屏幕信息](get/IDOGetWatchDialInfo.md) - `getWatchDialInfo`
- [获取表盘列表 v3](get/IDOGetWatchListV3.md) - `getWatchListV3`
- [获取表盘列表 v2](get/IDOGetWatchListV2.md) - `getWatchListV2`
- [获取语言库列表](get/IDOGetLanguageLibrary.md) - `getLanguageLibrary`
- [获取固件本地提示音文件信息](get/IDOGetBleBeep.md) - `getBleBeep`
- [获取默认的运动类型](get/IDOGetDefaultSportType.md) - `getDefaultSportType`
- [获取运动默认的类型 V3](get/IDOGetSportTypeV3.md) - `getSportTypeV3`
- [获取BT连接手机型号](get/IDOGetBtConnectPhoneModel.md) - `getBtConnectPhoneModel`




#### 设置

- [手机音量下发给ble](set/IDOSetBleVoice.md) - `setBleVoice`
- [设置控制gps](set/IDOSetGpsControl.md) - `setGpsControl`
- [智能心率模式设置](set/IDOSetHeartRateModeSmart.md) - `setHeartRateModeSmart`
- [设置压力校准](set/IDOSetStressCalibration.md) - `setStressCalibration`
- [设置洗手提醒](set/IDOSetHandWashingReminder.md) - `setHandWashingReminder`
- [设置运动目标](set/IDOSetSportGoal.md) - `setSportGoal`
- [设置天气数据](set/IDOSetWeatherData.md) - `setWeatherData`
- [未读信息红点提示开关](set/IDOSetUnreadAppReminder.md) - `setUnreadAppReminder`
- [手机app通过这个命令开关，实现通知应用状态设置](set/IDOSetNotificationStatus.md) - `setNotificationStatus`
- [设置科学睡眠开关](set/IDOSetScientificSleepSwitch.md) - `setScientificSleepSwitch`
- [血压校准](set/IDOSetBpCalibration.md) - `setBpCalibration`
- [设置防丢](set/IDOSetLostFind.md) - `setLostFind`
- [设置表盘](set/IDOSetWatchDial.md) - `setWatchDial`
- [设置天气开关](set/IDOSetWeatherSwitch.md) - `setWeatherSwitch`
- [设置单位](set/IDOSetUnit.md) - `setUnit`
- [设置寻找手机](set/IDOSetFindPhone.md) - `setFindPhone`
- [设置停止寻找手机](set/IDOSetOverFindPhone.md) - `setOverFindPhone`
- [设置一键呼叫](set/IDOSetOnekeySOS.md) - `setOnekeySOS`
- [设置运动模式选择](set/IDOSetSportModeSelect.md) - `setSportModeSelect`
- [设置运动模式排序](set/IDOSetSportModeSort.md) - `setSportModeSort`
- [设置久坐](set/IDOSetLongSit.md) - `setLongSit`
- [设置心率模式](set/IDOSetHeartRateMode.md) - `setHeartRateMode`
- [设置身体电量开关](set/IDOSetBodyPowerTurn.md) - `setBodyPowerTurn`
- [设置呼吸率开关](set/IDOSetRRespiRateTurn.md) - `setRRespiRateTurn`
- [环境音量的开关和阀值](set/IDOSetV3Noise.md) - `setV3Noise`
- [设置日出日落时间](set/IDOSetWeatherSunTime.md) - `setWeatherSunTime`
- [设置快捷方式](set/IDOSetShortcut.md) - `setShortcut`
- [设置通知中心](set/IDOSetNoticeStatus.md) - `setNoticeStatus`
- [设置夜间体温开关](set/IDOSetTemperatureSwitch.md) - `setTemperatureSwitch`
- [设置睡眠时间段](set/IDOSetSleepPeriod.md) - `setSleepPeriod`
- [设置抬手亮屏](set/IDOSetUpHandGesture.md) - `setUpHandGesture`
- [设置吃药提醒](set/IDOSetTakingMedicineReminder.md) - `setTakingMedicineReminder`
- [设置血氧开关](set/IDOSetSpo2Switch.md) - `setSpo2Switch`
- [设置天气城市名称](set/IDOSetWeatherCityName.md) - `setWeatherCityName`
- [app设置ble的闹钟](set/IDOSetAlarm.md) - `setAlarm`
- [健身指导](set/IDOSetFitnessGuidance.md) - `setFitnessGuidance`
- [显示模式](set/IDOSetDisplayMode.md) - `setDisplayMode`
- [血压测量](set/IDOSetBpMeasurement.md) - `setBpMeasurement`
- [音乐开关](set/IDOSetMusicOnOff.md) - `setMusicOnOff`
- [app下发跑步计划(运动计划)](set/IDOSetSendRunPlan.md) - `setSendRunPlan`
- [v3 下发v3天气协议](set/IDOSetWeatherV3.md) - `setWeatherV3`
- [控制音乐](set/IDOMusicControl.md) - `musicControl`
- [操作歌曲或者文件夹](set/IDOSetMusicOperate.md) - `setMusicOperate`
- [通知消息提醒](set/IDONoticeMessageV3.md) - `noticeMessageV3`
- [设置消息通知状态](set/IDOSetNoticeMessageState.md) - `setNoticeMessageState`
- [动态消息通知](set/IDOSetNoticeAppName.md) - `setNoticeAppName`
- [下发v3世界时间](set/IDOSetWorldTimeV3.md) - `setWorldTimeV3`
- [设置日程提醒](set/IDOSetSchedulerReminder.md) - `setSchedulerReminder`
- [血压校准控制](set/IDOSetBpCalControlV3.md) - `setBpCalControlV3`
- [设置表盘](set/IDOSetWatchFaceData.md) - `setWatchFaceData`
- [同步常用联系人](set/IDOSetSyncContact.md) - `setSyncContact`
- [设置运动子项数据排列](set/IDOSetSportParamSort.md) - `setSportParamSort`
- [新的100种运动排序](set/IDOSetSport100Sort.md) - `setSport100Sort`
- [设置主界面控件排序](set/IDOSetMainUISortV3.md) - `setMainUISortV3`
- [经期的历史数据下发](set/IDOSetHistoricalMenstruation.md) - `setHistoricalMenstruation`
- [设置运动城市名称](set/IDOSetLongCityNameV3.md) - `setLongCityNameV3`
- [V3设置心率模式](set/IDOSetHeartMode.md) - `setHeartMode`
- [语音回复文本](set/IDOSetVoiceReplyText.md) - `setVoiceReplyText`
- [设置表盘顺序](set/IDOSetWatchDialSort.md) - `setWatchDialSort`
- [设置多个走动提醒的时间点](set/IDOSetWalkRemindTimes.md) - `setWalkRemindTimes`
- [设置壁纸表盘列表](set/IDOSetWallpaperDialReply.md) - `setWallpaperDialReply`
- [设置时间](set/IDOSetDateTime.md) - `setDateTime`
- [设置用户信息](set/IDOSetUserInfo.md) - `setUserInfo`
- [重启设备](set/IDOReboot.md) - `reboot`
- [恢复出厂设置](set/IDOFactoryReset.md) - `factoryReset`
- [控制寻找设备开始](set/IDOFindDeviceStart.md) - `findDeviceStart`
- [控制寻找设备结束](set/IDOFindDeviceStop.md) - `findDeviceStop`
- [开始拍照 (app -> ble)](set/IDOPhotoStart.md) - `photoStart`
- [结束拍照 (app -> ble)](set/IDOPhotoStop.md) - `photoStop`
- [设置左右手](set/IDOSetHand.md) - `setHand`
- [设置屏幕亮度](set/IDOSetScreenBrightness.md) - `setScreenBrightness`
- [进入升级模式](set/IDOOtaStart.md) - `otaStart`
- [设置心率区间](set/IDOSetHeartRateInterval.md) - `setHeartRateInterval`
- [设置卡路里和距离目标(设置日常三环)](set/IDOSetCalorieDistanceGoal.md) - `setCalorieDistanceGoal`
- [设置走动提醒](set/IDOSetWalkRemind.md) - `setWalkRemind`
- [设置经期](set/IDOSetMenstruation.md) - `setMenstruation`
- [设置喝水提醒](set/IDOSetDrinkWaterRemind.md) - `setDrinkWaterRemind`
- [设置经期提醒](set/IDOSetMenstruationRemind.md) - `setMenstruationRemind`
- [设置压力开关](set/IDOSetStressSwitch.md) - `setStressSwitch`
- [设置语音助手开关](set/IDOSetVoiceAssistantOnOff.md) - `setVoiceAssistantOnOff`
- [设置勿扰模式](set/IDOSetNotDisturb.md) - `setNotDisturb`
- [设置菜单列表](set/IDOSetMenuList.md) - `setMenuList`
- [设置运动类型排序](set/IDOSetSportSortV3.md) - `setSportSortV3`
- [设置固件来电快捷回复开关](set/IDOSetCallQuickReplyOnOff.md) - `setCallQuickReplyOnOff`




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

