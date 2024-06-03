# Set the weather city name
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setWeatherCity

### Example

Swift
```swift
Cmds.set WeatherCityName().send { rs in
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
Cmds. setWeatherCityName().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
