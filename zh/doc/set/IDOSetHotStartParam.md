# 设置热启动参数

* [IDOGpsHotStartParamModel](../model/IDOGpsHotStartParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

### 示例

Swift

```swift
let param = IDOGpsHotStartParamModel(...)

Cmds.setHotStartParam(param).send { rs in
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
val param = IDOGpsHotStartParamModel(...)

Cmds.setHotStartParam(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```

