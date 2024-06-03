# Set scientific sleep switch
* [IDOScientificSleepSwitchParamModel](../model/IDOScientificSleepSwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setScientificSleepSwitch
 
### Example 

Swift 
```swift
let param = IDOScientificSleepSwitchParamModel(...)

Cmds.setScientificSleepSwitch(param).send { rs in
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOCmdSetRes responseModel 
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOScientificSleepSwitchParamModel(...)

Cmds.setScientificSleepSwitch(para m).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
