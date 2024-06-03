# 设置表盘顺序
* [IDOWatchDialSortParamModel](../model/IDOWatchDialSortParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setWatchDialSort

### 示例

Swift
```swift
let param = IDOWatchDialSortParamModel(...)

Cmds.setWatchDialSort(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOWatchDialSortParamModel(...)

Cmds.setWatchDialSort(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
