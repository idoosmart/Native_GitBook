# Blood Pressure Calibration Control
* [IDOBpCalControlModel](../model/IDOBpCalControlModel.md)

Function table: setSupportV3Bp

### Example

Swift
```swift
Cmds.setBpCalCon trolV3().send { rs in 
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOBpCalControlModel
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
 
Cmds.setBpCalControlV3().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOBpCalControlModel
 }else {
 // Failure
 }
}
```
