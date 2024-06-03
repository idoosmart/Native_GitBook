# Get user habit information 
* [IDOHabitInfoModel](../model/IDOHabitInfoModel.md) 

Function table: getSupportSedentaryTensileHabitInfo

### Example 

Swift
```swift
Cmds.getHabitInfo().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOHabitInfoModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 
Cmds.getHabitInfo().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOHabitInfoModel
 }else {
 // Failure 
 }
}
```
