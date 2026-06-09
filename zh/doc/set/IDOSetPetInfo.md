# 设置宠物信息
* [IDOPetInfoParamModel](../model/IDOPetInfoParamModel.md)
* [IDOPetInfoReplyModel](../model/IDOPetInfoReplyModel.md)

功能表：setPetInfo

### 示例

Swift
```swift
let param = IDOPetInfoParamModel(petType: 1, weight: 450, gender: 0, year: 2024, month: 1, day: 1)

Cmds.setPetInfo(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOPetInfoReplyModel
    } else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOPetInfoParamModel(petType = 1, weight = 450, gender = 0, year = 2024, month = 1, day = 1)

Cmds.setPetInfo(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOPetInfoReplyModel
    } else {
        // 失败
    }
}
```
