#Fitness Guidance
* [IDOFitnessGuidanceParamModel](../model/IDOFitnessGuidanceParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setSetFitnessGuidance

 ### Example 

Swift
```swift
let param = IDOFitnessGuidanceParamModel(...)

Cmds.setFitnessGuidance(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 } else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOFitnessGuidanceParamModel(...)

Cmds.setFitnessGuidance(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
