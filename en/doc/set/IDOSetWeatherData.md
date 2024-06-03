# Set weather data
* [IDOWeatherDataParamModel](../model/IDOWeatherDataParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: supportSetWeatherDataV2

### Example 

Swift
 ```swift
let param = IDOWeatherDataParamModel(...)

Cmds.setWeatherData(param).send { rs in
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
val param = IDOWeatherDataParamModel(...)

Cmds.setWeatherData(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
