# 设置运动子项数据排列
* [IDOSportSortParamModel](../model/IDOSportSortParamModel.md)
* [IDOSportSortModel](../model/IDOSportSortModel.md)

功能表：setSet20SportParamSort

### 示例

Swift
```swift
let param = IDOSportSortParamModel(...)

Cmds.setSportParamSort(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOSportSortModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOSportSortParamModel(...)

Cmds.setSportParamSort(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOSportSortModel
    }else {
        // 失败
    }
}
```
