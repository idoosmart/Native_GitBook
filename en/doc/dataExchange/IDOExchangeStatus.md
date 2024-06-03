# Exchange data status

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
 /// Initialization 
 case appStart = 1
 /// app initiation starts 
 case appStartReply = 2
 /// app initiation starts ble reply 
 case appEnd = 3
 /// app initiation ends 
 case appEndReply = 4 
 /// app initiates end ble reply 
 case appPause = 5
 /// app initiates pause 
 case appPauseReply = 6
 /// app initiates pause ble reply 
 case appRestore = 7
 /// app initiates recovery 
 case appRestoreReply = 8
 /// app initiates recovery ble reply 
 case appIng = 9
 /// app initiates exchange 
 case appIngReply = 10
 /// app initiates exchange ble reply 
 case getActivity = 11
 /// Get the last motion data 
 case getActivityReply = 12
 /// Get the last exercise data ble reply 
 case getHr = 13
 /// Get the one-minute heart rate 
 case getHrReply = 14
 /// Get the one-minute heart rate ble reply 
 case appStartPlan = 15
 / // app starts exercise plan 
 case appStartPlanReply = 16
 /// app starts exercise plan ble reply 
 case appPausePlan = 17
 /// app pauses exercise plan 
 case appPausePlanReply = 18
 /// app pauses exercise plan ble reply 
 case appRestorePlan = 19
 /// app resumes exercise plan 
 case appRestorePlanReply = 20
 /// app resumes exercise plan ble reply 
 case appEndPlan = 21
 /// app ends exercise plan 
 case appEndPlanReply = 22
 /// app End exercise plan ble reply 
 case appSwitchAction = 23
 /// app switch action 
 case appSwitchActionReply = 24
 /// app end exercise plan ble reply 
 case appBlePause = 25
 /// app initiated exercise ble initiates pause 
 case appBlePauseReply = 26
 /// An app-initiated movement ble initiates a pause app reply 
 case appBleRestore = 27
 /// An app-initiated movement ble initiates a recovery 
 case appBleRestoreReply = 28
 /// An app-initiated movement ble initiates a resume app reply 
 case appBleEnd = 29
 /// The movement initiated by app, ble initiation, ends. 
 case appBleEndReply = 30
 /// The movement initiated by app, ble initiation, ends. app reply 
 case bleStart = 31
 /// The movement initiated by ble, ble initiation starts. 
 case bleStartReply = 32
 /// The movement initiated by ble starts the app reply 
 case bleEnd = 33
 /// The movement initiated by ble ends when initiated by ble 
 case bleEndReply = 34
 /// The movement initiated by ble ends when initiated by ble app reply 
 case blePause = 35
 /// ble initiated movement ble initiated pause 
 case blePauseReply = 36
 /// ble initiated movement ble initiated pause app reply 
 case bleRestore = 37
 /// ble initiated movement ble Initiate recovery 
 case bleRestoreReply = 38
 /// ble initiated movement ble initiated recovery app reply 
 case bleIng = 39
 /// ble initiated movement ble initiated exchange 
 case bleIngReply = 40
 /// ble initiated movement ble Initiate exchange app reply 
 case bleStartPlan = 41
 /// ble start exercise plan 
 case blePausePlan = 42
 /// ble pause exercise plan 
 case bleRestorePlan = 43
 /// ble resume exercise plan 
 case bleEndPlan = 44
 / // ble end motion plan 
 case bleSwitchAction = 45
 /// ble switch action 
 case bleOperatePlanReply = 46
}
```

<!--endsec-->

<!--sec data-title= "kotlin" data-id="section2" data-show=false ces-->

```kotlin
enum class IDOExchangeStatus(val raw: Int) {
 INITIAL(0),

 /// Initialization
 APPSTART (1),

 /// APP initiation starts
 APPSTARTREPLY(2),

 /// APP initiation starts BLE reply
 APPEND(3),

 /// APP initiation ends
 APPENDREPLY(4),

/// APP initiates end of BLE reply
 APPPAUSE(5),

 /// APP initiates pause 
 APPPAUSEREPLY(6),

 /// APP initiates pause BLE reply
 APPRESTORE(7),

 /// APP Initiate recovery
 APPRESTOREREPLY(8),

 /// APP initiates recovery BLE reply
 APPING(9),

 /// APP initiates exchange
 APPINGREPLY(10),

 /// APP initiates exchange BLE reply
 GETACTIVITY (11),

 /// Get the last exercise data
 GETACTIVITYREPLY(12),

 /// Get the last exercise data BLE reply
 GETHR(13),

 /// Get the one-minute heart rate
 GETHRREPLY(14) ,

 /// Get one-minute heart rate BLE reply
 APPSTARTPLAN(15),

 /// APP starts exercise plan
 APPSTARTPLANREPLY(16),

 /// APP starts exercise plan BLE reply
 APPPAUSEPLAN(17), 

 /// APP pauses exercise plan 
 APPPAUSEPLANREPLY(18),

 /// APP pauses exercise plan BLE reply
 APPRESTOREPLAN(19),

 /// APP resumes exercise plan
 APPRESTOREPLANREPLY(20),
 
 / // APP resumes exercise plan BLE reply 
 APPENDPLAN(21),

 /// APP ends exercise plan 
 APPENDPLANREPLY(22),

 /// APP ends exercise plan BLE reply 
 APPSWITCHACTION(23),

 // / APP switching action 
 APPSWITCHACTIONREPLY(24),

 /// APP end exercise plan BLE reply 
 APPBLEPAUSE(25),

 /// APP initiated exercise BLE initiation pause 
 APPBLEPAUSEREPLY(26),

 /// APP-initiated movement BLE initiates pause APP reply 
 APPBLERESTORE(27),

 /// APP-initiated movement BLE initiates recovery 
 APPBLERESTOREREPLY(28),

 /// APP-initiated movement BLE initiates recovery APP reply 
 APPBLEEND( 29),

 /// The movement initiated by APP ends with BLE initiation
 APPBLEENDREPLY(30),

 /// The movement initiated by APP ends with BLE initiation. APP replies
 BLESTART(31),

 /// The movement initiated by BLE BLE initiation starts
 BLESTARTREPLY(32),

 /// BLE initiated movement BLE initiation starts APP reply
 BLEEND(33),

 /// BLE initiated movement BLE initiation ends
 BLEENDREPLY(34),

 / // BLE initiated movement BLE initiated end APP reply 
 BLEPAUSE(35),

 /// BLE initiated movement BLE initiated pause 
 BLEPAUSEREPLY(36),

 /// BLE initiated movement BLE initiated pause APP reply
 BLERESTORE(37),

 /// BLE initiated movement BLE initiated recovery
 BLERESTOREREPLY(38),

 /// BLE initiated movement BLE initiated recovery APP reply
 BLEING(39),

 /// BLE initiated Movement BLE initiated exchange 
 BLEINGREPLY(40),

 /// BLE initiated movement BLE initiated exchange APP reply
 BLESTARTPLAN(41),

 /// BLE started movement plan 
 BLEPAUSEPLAN(42),

 // / BLE pause exercise plan 
 BLERESTOREPLAN(43),

 /// BLE resume exercise plan 
 BLEENDPLAN(44),

 /// BLE end exercise plan 
 BLESWITCHACTION(45),

 /// BLE switching action
 BLEOPERATEPLANREPLY(46);

}
```

<!--endsec-->