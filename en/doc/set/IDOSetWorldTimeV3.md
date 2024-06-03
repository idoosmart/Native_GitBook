# Issue v3 world time 
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)
* [IDOWorldTimeParamModel](../model/IDOWorldTimeParamModel.md)

Function table: setSetV3WorldTime

### Example

 Swift
```swift
let item = IDOWorldTimeParamModel(...)
Cmds.setWorldTimeV3([item]).send { rs in
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
val item = IDOWorldTimeParamModel(...)
Cmds.setWorldTimeV3(listOf(item)).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
