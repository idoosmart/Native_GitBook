# 获取设备支持的列表
* [IDOMenuListModel](../model/IDOMenuListModel.md)

功能表 : getMenuList

### 示例

Swift
```swift
Cmds.getMenuList().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOMenuListModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getMenuList().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOMenuListModel
    }else {
        // 失败
    }
}
```
