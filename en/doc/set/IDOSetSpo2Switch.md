# Set blood oxygen switch
* [IDOSpo2SwitchParamModel](../model/IDOSpo2SwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setSpo2Data

### Example 

Swift 
```swift
let param = IDOSpo2SwitchParamModel(...)

Cmds.setSpo2Switch(param).send { rs in
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
val param = IDOSpo2SwitchParamModel(...)

Cmds.setSpo2Switch(param).send { 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
