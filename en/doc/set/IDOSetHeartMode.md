# V3 set heart rate mode 
* [IDOHeartModeParamModel](../model/IDOHeartModeParamModel.md)
* [IDOHeartModeModel](../model/IDOHeartModeModel.md)

Function table: syncHeartRateMonitor

### Example


Swift 
```swift
let param = IDOHeartModeParamModel(...)

Cmds.setHeartMode(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOHeartModeModel 
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOHeartModeParamModel(...)

Cmds.setHeartMode(param).send { 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOHeartModeModel
 }else {
 // Failure
 }
}
```
