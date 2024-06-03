# Get the sports mode automatic recognition switch 
* [IDOActivitySwitchModel](../model/IDOActivitySwitchModel.md) 

Function table: getActivitySwitch

### Example 

Swift
```swift
Cmds.getActivitySwitch().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOActivitySwitchModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin 
 Cmds.getActivitySwitch().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOActivitySwitchModel
 }else {
 // Failure
 }
}
```