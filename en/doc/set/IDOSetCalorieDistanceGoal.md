# Set calorie and distance goals (set daily three-ring)
* [IDOMainSportGoalModel](../model/IDOMainSportGoalModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setCalorieGoal

 ### Example 

Swift
```swift
let param = IDOMainSportGoalModel(...)

Cmds.setCalorieDistanceGoal(param).send { rs in
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
val param = IDOMainSportGoalModel(...)
 
Cmds.setCalorieDistanceGoal(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
