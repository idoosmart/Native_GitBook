# 新的100种运动排序
* [IDOSport100SortParamModel](../model/IDOSport100SortParamModel.md)
* [IDOSport100SortModel](../model/IDOSport100SortModel.md)

功能表：getSportsTypeV3

### 示例

Swift
```swift
let param = IDOSport100SortParamModel(...)

Cmds.setSport100Sort(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOSport100SortModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOSport100SortParamModel(...)

Cmds.setSport100Sort(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOSport100SortModel
    }else {
        // 失败
    }
}
```
