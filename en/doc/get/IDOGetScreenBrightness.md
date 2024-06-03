# Get screen brightness 
* [IDOScreenBrightnessModel](../model/IDOScreenBrightnessModel.md)

Function table: getScreenBrightnessMain9

### Example 

Swift
```swift
Cmds.getScreenBrightness().send { rs in 
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOScreenBrightnessModel
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
 Cmds.getScreenBrightness().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOScreenBrightnessModel
 }else {
 // Failure
 }
}
```
