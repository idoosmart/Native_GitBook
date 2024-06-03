# Get blood oxygen switch

* [IDOSpo2SwitchModel](../model/IDOSpo2SwitchModel.md)

Function table: getSupportGetSpo2SwitchInfo

### Example

Swift

```swift
Cmds.getSpo2Switch().send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDOSpo2SwitchModel
     }else {
         // fail
     }
}
```

Kotlin

```kotlin
Cmds.getSpo2Switch().send {
     if (it.error.code == 0) {
         // success
         // it.res is IDOSpo2SwitchModel
     }else {
         // fail
     }
}
```
