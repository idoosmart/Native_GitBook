# Set pet info
* [IDOPetInfoParamModel](../model/IDOPetInfoParamModel.md)
* [IDOPetInfoReplyModel](../model/IDOPetInfoReplyModel.md)

Function table: setPetInfo

### Example

Swift
```swift
let param = IDOPetInfoParamModel(petType: 1, weight: 450, gender: 0, year: 2024, month: 1, day: 1)

Cmds.setPetInfo(param).send { rs in
    if case .success(let obj) = rs {
        // Success
        // obj is IDOPetInfoReplyModel
    } else {
        // Failure
    }
}
```

Kotlin
```kotlin
val param = IDOPetInfoParamModel(petType = 1, weight = 450, gender = 0, year = 2024, month = 1, day = 1)

Cmds.setPetInfo(param).send {
    if (it.error.code == 0) {
        // Success
        // it.res is IDOPetInfoReplyModel
    } else {
        // Failure
    }
}
```
