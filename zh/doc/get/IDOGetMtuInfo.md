# 获取mtu信息
* [IDOMtuInfoModel](../model/IDOMtuInfoModel.md)

功能表:getMtu

### 示例

Swift
```swift
Cmds.getMtuInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOMtuInfoModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getMtuInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOMtuInfoModel
    }else {
        // 失败
    }
}
```
