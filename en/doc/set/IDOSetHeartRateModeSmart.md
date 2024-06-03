# Smart heart rate mode setting
* [IDOHeartRateModeSmartParamModel](../model/IDOHeartRateModeSmartParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setSmartHeartRate



### Example

Swift
```swift
let param = IDOHeartRateModeSmartParamModel(...)

Cmds.setHeartRateModeSmart(param).send { rs in
 if case .success(let obj) = rs {
 // Success 
 // ob j is IDOCmdSetResponseModel
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOHeartRateModeSmartParamModel(...)

Cmd s.setHeartRateModeSmart(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
