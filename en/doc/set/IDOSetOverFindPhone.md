# Set OverFindPhone
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setOverFindPhone

### Example 

Swift
```swift
Cmds. setOverFindPhone().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin 
Cmds. setOverFindPhone().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
