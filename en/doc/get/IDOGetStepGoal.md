# Get the all-day step goal 
* [IDOStepGoalModel](../model/IDOStepGoalModel.md)

Function table: getStepDataTypeV2

### Example 

Swift
```swift
Cmds.getStepGoal().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOStepGoalModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
Cmds.getStepGoal().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOStepGoalModel
 }else {
 // Failure
 }
}
```