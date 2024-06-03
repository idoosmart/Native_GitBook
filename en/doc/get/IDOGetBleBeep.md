# Get firmware local beep file information 
* [IDOBleBeepModel](../model/IDOBleBeepModel.md)

Function table:getSupportGetBleBeepV3

### Example 

Swift
```swift
Cmds.getBleBeep().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOBleBeepModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin 
Cmds.getBleBeep().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOBleBeepModel
 }else {
 // Failure 
 }
}
```
