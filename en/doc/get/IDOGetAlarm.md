# app to get BLE's alarm clock 
* [IDOAlarmModel](../Model/Idoalarmitem.md) 

 Function table: Syncv3Syncalarm

 ### Example 

Swift
 ```Swift
 Cmds.getAlarm().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOAlarmModel
 }else {
 // Failure
 }
}
 ```

Kotlin
```kotlin
 
Cmds.getAlarm().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOAlarmModel
 }else {
 // Failure 
 }
}
```
