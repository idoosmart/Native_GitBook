# Set sunrise and sunset time
* [IDOWeatherSunTimeParamModel](../model/IDOWeatherSunTimeParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setWeatherSunTime

### Example

 Swift
```swift
let param = IDOWeatherSunTimeParamModel(...)

Cmds.setWeatherSunTime(param).send { rs in
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
val param = IDOWeatherSunTimeParamModel(...)

Cmds.setWeatherSunTime(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
