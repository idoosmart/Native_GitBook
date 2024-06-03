# Get pressure switch

* [IDOStressSwitchModel](../model/IDOStressSwitchModel.md)

Function table: getSupportGetPressureSwitchInfo

### Example

Swift

```swift
Cmds.getStressSwitch().send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDOStressSwitchModel
     }else {
         // fail
     }
}
```

Kotlin

```kotlin
Cmds.getStressSwitch().send {
     if (it.error.code == 0) {
         // success
         // it.res is IDOStressSwitchModel
     }else {
         // fail
     }
}
```
