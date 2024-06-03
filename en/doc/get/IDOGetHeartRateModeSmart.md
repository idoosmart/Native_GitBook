# Get smart heart rate mode

* [IDOHeartRateModeSmartModel](../model/IDOHeartRateModeSmartModel.md)

Function table: getSupportGetSmartHeartRate

### Example

Swift

```swift
Cmds.getHeartRateModeSmart().send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDOHeartRateModeSmartModel
     }else {
         // fail
     }
}
```

Kotlin

```kotlin
Cmds.getHeartRateModeSmart().send {
     if (it.error.code == 0) {
         // success
         // it.res is IDOHeartRateModeSmartModel
     }else {
         // fail
     }
}
```
