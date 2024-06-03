# Set the pressure switch
* [IDOStressSwitchParamModel](../model/IDOStressSwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setPressureData 

### Example 

Swift
 ```swift
let param = IDOStressSwitchParamModel(...)

Cmds.setStressSwitch(param).send { rs in
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
val param = IDOStressSwitchParamModel(...)

Cmds.setStressSwitch(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
