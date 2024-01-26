# Respiration rate switch setting event
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function Table：setRespirationRate

### Sample

```swift
Cmds.setRRespiRateTurn().send { rs in
    if case .success(let obj) = rs {
        // success
        // obj is IDOCmdSetResponseModel
    }else {
        // fail
    }
}
```

Kotlin
```kotlin
Cmds.setRRespiRateTurn().send {
    if (it.res != null) {
        // success
        // it.res is IDOCmdSetResponseModel
    }else {
        // fail
    }
}
```
