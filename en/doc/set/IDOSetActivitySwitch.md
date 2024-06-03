# Set the motion mode recognition switch
* [IDOActivitySwitchParamModel](../model/IDOActivitySwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setActivitySwitch

### Example

 Swift
```swift
let param = IDOActivitySwitchParamModel(...)

Cmds.setActivitySwitch(param).send { rs in
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
val param = IDOActivitySwitchParamModel(...)

Cmds.setActivity Switch(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
