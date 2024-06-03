# Set screen brightness
* [IDOScreenBrightnessModel](../model/IDOScreenBrightnessModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setScreenBrightness

### Example 

Swift
 ```swift
let param = IDOScreenBrightnessModel(...)

Cmds.setScreenBrightness(param).send { rs in
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
val param = IDOScreenBrightnessModel(...)

Cmds.setScreenBrightness(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
