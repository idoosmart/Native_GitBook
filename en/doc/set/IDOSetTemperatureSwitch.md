# Set the night temperature switch
* [IDOTemperatureSwitchParamModel](../model/IDOTemperatureSwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setTemperatureSwitchSupport

 
### Example

Swift 
```swift
let param = IDOTemperatureSwitchParamModel(...)

Cmds.setTemperatureSwitch(param).send { rs in
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
val param = IDOTemperatureSwitchParamModel(...)

Cmds.setTemperatureSwitch(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
