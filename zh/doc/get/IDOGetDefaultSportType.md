# 获取默认的运动类型
* [IDODefaultSportTypeModel](../model/IDODefaultSportTypeModel.md)

功能表:setV3GetSportSortField

### 示例

Swift
```swift
Cmds.getDefaultSportType().send { rs in
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
Cmds.getDefaultSportType().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDODefaultSportTypeModel
    }else {
        // 失败
    }
}
```
