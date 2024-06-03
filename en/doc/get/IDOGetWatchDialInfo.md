# Get screen information 
* [IDOWatchDialInfoModel](../model/IDOWatchDialInfoModel.md)

Function table: None 

### Example 

Swift
```swift
Cmds.getWatchDialInfo().send {rs in 
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOWatchDialInfoModel
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
 
Cmds.getWatchDialInfo().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOWatchDialInfoModel
 }else {
 // Failure
 }
}
```
