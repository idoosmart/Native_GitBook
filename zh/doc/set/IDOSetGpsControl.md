# 设置控制gps
* [IDOGpsControlParamModel](../model/IDOGpsControlParamModel.md)
* [IDOGpsControlModel](../model/IDOGpsControlModel.md)

功能表：无

### 示例

Swift
```swift
let param = IDOGpsControlParamModel(...)

Cmds.setGpsControl(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOGpsControlModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOGpsControlParamModel(...)

Cmds.setGpsControl(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOGpsControlModel
    }else {
        // 失败
    }
}
```
