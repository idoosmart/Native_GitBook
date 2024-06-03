# app sets ble’s alarm clock
* [IDOAlarmModel](../model/IDOAlarmItem.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: syncV3SyncAlarm

### Example


 Swift
```swift
let param = IDOAlarmModel(...)

Cmds.setAlarm(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOAlarmModel(...)

Cmds.setAlarm(param) .send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
