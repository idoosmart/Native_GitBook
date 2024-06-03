# Get all health monitoring switches 
* [IDOAllHealthSwitchStateModel](../model/IDOAllHealthSwitchStateModel.md) 

Function table: getHealthSwitchStateSupportV3

### Example 

Swift
```swift
Cmds.getAllHealthSwitchState().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOAllHealthSwitchStateModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin 
 Cmds.getAllHealthSwitchState().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOAllHealthSwitchStateModel
 }else {
 // Failure
 }
}
```