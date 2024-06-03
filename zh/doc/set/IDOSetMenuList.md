# 设置菜单列表
* [IDOMenuListParamModel](../model/IDOMenuListParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setMenuListMain7

### 示例

Swift
```swift
let param = IDOMenuListParamModel(...)

Cmds.setMenuList(param).send { rs in
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
val param = IDOMenuListParamModel(...)

Cmds.setMenuList(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
