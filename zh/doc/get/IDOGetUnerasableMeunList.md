# 获取固件不可删除的快捷应用列表
* [IDOUnerasableMeunListModel](../model/IDOUnerasableMeunListModel.md)

功能表:getDeletableMenuListV2

### 示例

Swift
```swift
Cmds.getUnerasableMeunList().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOUnerasableMeunListModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getUnerasableMeunList().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOUnerasableMeunListModel
    }else {
        // 失败
    }
}
```
