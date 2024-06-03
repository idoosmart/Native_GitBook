# 获取运动默认的类型 V3
* [IDODefaultSportTypeModel](../model/IDODefaultSportTypeModel.md)

功能表:setV3GetSportSortField

### 示例

Swift
```swift
Cmds.getSportTypeV3().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDODefaultSportTypeModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getSportTypeV3().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDODefaultSportTypeModel
    }else {
        // 失败
    }
}
```
