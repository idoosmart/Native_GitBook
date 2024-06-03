# Get the set calories/distance/medium-high exercise duration main interface 
* [IDOMainSportGoalModel](../model/IDOMainSportGoalModel.md) 

Function table: getSupportGetMainSportGoalV3 

setCalorieGoal (secondary menu), 

exMain3DistanceGoal (Level 2 Menu), 

setMidHighTimeGoal (secondary menu), 

getSupportSetGetTimeGoalTypeV2 (secondary menu) 

### Example 

Swift
```swift
Cmds.getMainSportGoal().send { rs in
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOMainSportGoalModel
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
Cmds.getMainSportGoal().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOMainSportGoalModel
 }else {
 // Failure
 }
}
```
