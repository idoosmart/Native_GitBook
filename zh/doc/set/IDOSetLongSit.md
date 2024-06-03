# 设置久坐
* [IDOLongSitParamModel](../model/IDOLongSitParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSedentariness

### 示例

Swift
```swift
let param = IDOLongSitParamModel(...)

Cmds.setLongSit(param).send { rs in
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
val param = IDOLongSitParamModel(...)

Cmds.setLongSit(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
