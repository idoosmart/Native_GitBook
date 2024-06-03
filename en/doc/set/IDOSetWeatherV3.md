# Send v3 weather data
* [IDOWatherV3ParamModel](../model/IDOWeatherV3ParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setSetV3Weather


### Example

Swift
```swift
let param = IDOWeatherV3ParamModel(...)

Cmds.setWeatherV3(param).send { rs in
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
val param = IDOWeatherV3ParamModel(...)

Cmds.setWeatherV3(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
