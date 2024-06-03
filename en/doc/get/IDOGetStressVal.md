# Get the pressure value

* [IDOStressValModel](../model/IDOStressValModel.md)

Menu: setSetStressCalibration

### Example

Swift

```swift
Cmds.getStressVal().send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDOStressValModel
     }else {
         // fail
     }
}
```

Kotlin

```kotlin
Cmds.getStressVal().send {
     if (it.error.code == 0) {
         // success
         // it.res is IDOStressValModel
     }else {
         // fail
     }
}
```
