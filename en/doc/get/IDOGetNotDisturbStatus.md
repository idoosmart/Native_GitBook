# Get Do Not Disturb mode status 
* [IDONotDisturbStatusModel](../model/IDONotDisturbStatusModel.md) 

Function table: getDoNotDisturbMain3

### Example 

Swift
```swift
Cmd s.getNotDisturbStatus().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDONotDisturbStatusModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin 
Cmds.getNotDisturbStatus().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDONotDisturbStatusModel
 }else {
 // Failure
 }
}
```
