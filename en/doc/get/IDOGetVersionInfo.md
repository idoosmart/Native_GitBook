# Get version information 
* [IDOVersionInfoModel](../model/IDOVersionInfoModel.md)

Function table:getVersionInfo

### Example 

Swift
```swift
Cmds.getVersionInfo().send {rs in 
 if case .success(let obj) = rs {
 // Success
 // obj is IDOVersionInfoModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 
Cmds.getVersionInfo().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOVersionInfoModel
 }else {
 // Failure
 }
}
```
