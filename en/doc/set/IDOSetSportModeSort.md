# Set sport mode sorting
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setSportModeSort

### Example

Swift
```swift
Cmds.setSportModeSort().send { rs in
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
Cmds. setSportModeSort().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
