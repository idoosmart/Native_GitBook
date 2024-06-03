# Set sports goal

* [IDOSportGoalParamModel](../model/IDOSportGoalParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: 
getSupportWalkGoalSteps (secondary menu)

getStepDataTypeV2( Secondary menu) 

### Example 

Swift
```swift
let param = IDOSportGoalParamModel(...)

Cmds.setSportGoal(param).send { rs in
 if case .success(let obj ) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
val param = IDOSportGoalModel (...)

 Cmds.setSportGoal(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
