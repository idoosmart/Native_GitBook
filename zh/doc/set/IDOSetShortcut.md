# 设置快捷方式
* [IDOShortcutParamModel](../model/IDOShortcutParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### 示例

Swift
```swift
let param = IDOShortcutParamModel(...)

Cmds.setShortcut(param).send { rs in
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
val param = IDOShortcutParamModel(...)

Cmds.setShortcut(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
