# 获取HID信息
* [Bool](../model/Bool.md)

功能表：无

### 示例

Swift
```swift
Cmds.getHidInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is Bool
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getHidInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is Bool
    }else {
        // 失败
    }
}
```
