# 设置主界面控件排序
* [IDOMainUISortParamModel](../model/IDOMainUISortParamModel.md)
* [IDOMainUISortModel](../model/IDOMainUISortModel.md)

功能表：setSetMainUiSort

### 示例

Swift
```swift
let param = IDOMainUISortParamModel(...)

Cmds.setMainUISortV3(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOMainUISortModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOMainUISortParamModel(...)

Cmds.setMainUISortV3(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOMainUISortModel
    }else {
        // 失败
    }
}
```
