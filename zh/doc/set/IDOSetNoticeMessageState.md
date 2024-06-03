# 设置消息通知状态
* [IDONoticeMessageStateParamModel](../model/IDONoticeMessageStateParamModel.md)
* [IDONoticeMessageStateModel](../model/IDONoticeMessageStateModel.md)



### 示例

Swift
```swift
let param = IDONoticeMessageStateParamModel(...)

Cmds.setNoticeMessageState(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDONoticeMessageStateModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDONoticeMessageStateParamModel(...)

Cmds.setNoticeMessageState(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDONoticeMessageStateModel
    }else {
        // 失败
    }
}
```
