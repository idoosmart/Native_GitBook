# Get pet info
* [IDOPetInfoModel](../model/IDOPetInfoModel.md)

Function table: getPetInfo

### Example

Swift
```swift
Cmds.getPetInfo().send { rs in
    if case .success(let obj) = rs {
        // Success
        // obj is IDOPetInfoModel
    } else {
        // Failure
    }
}
```

Kotlin
```kotlin
Cmds.getPetInfo().send {
    if (it.error.code == 0) {
        // Success
        // it.res is IDOPetInfoModel
    } else {
        // Failure
    }
}
```
