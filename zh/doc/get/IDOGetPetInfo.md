# 获取宠物信息
* [IDOPetInfoModel](../model/IDOPetInfoModel.md)

功能表：getPetInfo

### 示例

Swift
```swift
Cmds.getPetInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOPetInfoModel
    } else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getPetInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOPetInfoModel
    } else {
        // 失败
    }
}
```
