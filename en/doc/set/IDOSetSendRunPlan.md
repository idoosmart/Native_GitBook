# app issues running plan (exercise plan)
* [IDORunPlanParamModel](../model/IDORunPlanParamModel.md)
* [IDOSendRunPlanModel](../model/IDOSendRunPlanModel.md)

Function table: setSupportSportPlan

### Example 

Swift
```swift
let param = IDORunPlanParamModel(...)

Cmds.setSendRunPlan(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOSendRunPlanModel
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDORunPlanParamModel(...)

Cmds.setSend RunPlan(param).send { 
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOSendRunPlanModel
 }else {
 // Failure 
 }
}
```
