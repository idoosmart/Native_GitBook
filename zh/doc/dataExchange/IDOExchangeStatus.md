# 交换数据状态

<div style ="display:flex;justify-content: flex-end;" >
  <button class="section" target="section1" show="swift" hide="swift"></button>
  <div style="width:10px"></div>
  <button class="section" target="section2" show="kotlin" hide="kotlin"></button>
</div>

# IDOExchangeStatus

<!--sec data-title="swift" data-id="section1" data-show=true ces-->

```swift
enum IDOExchangeStatus: Int {
    case initial = 0
    /// 初始化
    case appStart = 1
    /// app发起开始
    case appStartReply = 2
    /// app发起开始 ble回复
    case appEnd = 3
    /// app发起结束
    case appEndReply = 4
    /// app发起结束 ble回复
    case appPause = 5
    /// app发起暂停
    case appPauseReply = 6
    /// app发起暂停 ble回复
    case appRestore = 7
    /// app发起恢复
    case appRestoreReply = 8
    /// app发起恢复 ble回复
    case appIng = 9
    /// app发起交换
    case appIngReply = 10
    /// app发起交换 ble回复
    case getActivity = 11
    /// 获取最后运动数据
    case getActivityReply = 12
    /// 获取最后运动数据 ble回复
    case getHr = 13
    /// 获取一分钟心率
    case getHrReply = 14
    /// 获取一分钟心率 ble回复
    case appStartPlan = 15
    /// app开始运动计划
    case appStartPlanReply = 16
    /// app开始运动计划 ble回复
    case appPausePlan = 17
    /// app暂停运动计划
    case appPausePlanReply = 18
    /// app暂停运动计划 ble回复
    case appRestorePlan = 19
    /// app恢复运动计划
    case appRestorePlanReply = 20
    /// app恢复运动计划 ble回复
    case appEndPlan = 21
    /// app结束运动计划
    case appEndPlanReply = 22
    /// app结束运动计划 ble回复
    case appSwitchAction = 23
    /// app切换动作
    case appSwitchActionReply = 24
    /// app结束运动计划 ble回复
    case appBlePause = 25
    /// app发起的运动 ble发起暂停
    case appBlePauseReply = 26
    /// app发起的运动 ble发起暂停 app回复
    case appBleRestore = 27
    /// app发起的运动 ble发起恢复
    case appBleRestoreReply = 28
    /// app发起的运动 ble发起恢复 app回复
    case appBleEnd = 29
    /// app发起的运动 ble发起结束
    case appBleEndReply = 30
    /// app发起的运动 ble发起结束 app回复
    case bleStart = 31
    /// ble发起的运动 ble发起开始
    case bleStartReply = 32
    /// ble发起的运动 ble发起开始 app回复
    case bleEnd = 33
    /// ble发起的运动 ble发起结束
    case bleEndReply = 34
    /// ble发起的运动 ble发起结束 app回复
    case blePause = 35
    /// ble发起的运动 ble发起暂停
    case blePauseReply = 36
    /// ble发起的运动 ble发起暂停 app回复
    case bleRestore = 37
    /// ble发起的运动 ble发起恢复
    case bleRestoreReply = 38
    /// ble发起的运动 ble发起恢复 app回复
    case bleIng = 39
    /// ble发起的运动 ble发起交换
    case bleIngReply = 40
    /// ble发起的运动 ble发起交换 app回复
    case bleStartPlan = 41
    /// ble开始运动计划
    case blePausePlan = 42
    /// ble暂停运动计划
    case bleRestorePlan = 43
    /// ble恢复运动计划
    case bleEndPlan = 44
    /// ble结束运动计划
    case bleSwitchAction = 45
    /// ble切换动作
    case bleOperatePlanReply = 46
}
```

<!--endsec-->

<!--sec data-title="kotlin" data-id="section2" data-show=false ces-->

```kotlin
enum class IDOExchangeStatus(val raw: Int) {
    INITIAL(0),

    /// 初始化
    APPSTART(1),

    /// APP发起开始
    APPSTARTREPLY(2),

    /// APP发起开始 BLE回复
    APPEND(3),

    /// APP发起结束
    APPENDREPLY(4),

    /// APP发起结束 BLE回复
    APPPAUSE(5),

    /// APP发起暂停
    APPPAUSEREPLY(6),

    /// APP发起暂停 BLE回复
    APPRESTORE(7),

    /// APP发起恢复
    APPRESTOREREPLY(8),

    /// APP发起恢复 BLE回复
    APPING(9),

    /// APP发起交换
    APPINGREPLY(10),

    /// APP发起交换 BLE回复
    GETACTIVITY(11),

    /// 获取最后运动数据
    GETACTIVITYREPLY(12),

    /// 获取最后运动数据 BLE回复
    GETHR(13),

    /// 获取一分钟心率
    GETHRREPLY(14),

    /// 获取一分钟心率 BLE回复
    APPSTARTPLAN(15),

    /// APP开始运动计划
    APPSTARTPLANREPLY(16),

    /// APP开始运动计划 BLE回复
    APPPAUSEPLAN(17),

    /// APP暂停运动计划
    APPPAUSEPLANREPLY(18),

    /// APP暂停运动计划 BLE回复
    APPRESTOREPLAN(19),

    /// APP恢复运动计划
    APPRESTOREPLANREPLY(20),

    /// APP恢复运动计划 BLE回复
    APPENDPLAN(21),

    /// APP结束运动计划
    APPENDPLANREPLY(22),

    /// APP结束运动计划 BLE回复
    APPSWITCHACTION(23),

    /// APP切换动作
    APPSWITCHACTIONREPLY(24),

    /// APP结束运动计划 BLE回复
    APPBLEPAUSE(25),

    /// APP发起的运动 BLE发起暂停
    APPBLEPAUSEREPLY(26),

    /// APP发起的运动 BLE发起暂停 APP回复
    APPBLERESTORE(27),

    /// APP发起的运动 BLE发起恢复
    APPBLERESTOREREPLY(28),

    /// APP发起的运动 BLE发起恢复 APP回复
    APPBLEEND(29),

    /// APP发起的运动 BLE发起结束
    APPBLEENDREPLY(30),

    /// APP发起的运动 BLE发起结束 APP回复
    BLESTART(31),

    /// BLE发起的运动 BLE发起开始
    BLESTARTREPLY(32),

    /// BLE发起的运动 BLE发起开始 APP回复
    BLEEND(33),

    /// BLE发起的运动 BLE发起结束
    BLEENDREPLY(34),

    /// BLE发起的运动 BLE发起结束 APP回复
    BLEPAUSE(35),

    /// BLE发起的运动 BLE发起暂停
    BLEPAUSEREPLY(36),

    /// BLE发起的运动 BLE发起暂停 APP回复
    BLERESTORE(37),

    /// BLE发起的运动 BLE发起恢复
    BLERESTOREREPLY(38),

    /// BLE发起的运动 BLE发起恢复 APP回复
    BLEING(39),

    /// BLE发起的运动 BLE发起交换
    BLEINGREPLY(40),

    /// BLE发起的运动 BLE发起交换 APP回复
    BLESTARTPLAN(41),

    /// BLE开始运动计划
    BLEPAUSEPLAN(42),

    /// BLE暂停运动计划
    BLERESTOREPLAN(43),

    /// BLE恢复运动计划
    BLEENDPLAN(44),

    /// BLE结束运动计划
    BLESWITCHACTION(45),

    /// BLE切换动作
    BLEOPERATEPLANREPLY(46);

}
```

<!--endsec-->