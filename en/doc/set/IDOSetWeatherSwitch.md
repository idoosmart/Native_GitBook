# Set weather switch 
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md) 

Function table: setSetV3Weather

### Example 

Swift
```swift
Cmds. setWeatherSwitch().send { rs in 
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
Cmds.setWeatherSwitch().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
