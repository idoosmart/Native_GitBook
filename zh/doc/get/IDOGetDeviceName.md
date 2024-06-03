# ~~获取手表名字~~ 
* [String](../model/String.md)

功能表：无

接口已废弃

### 示例

Swift
```swift
Cmds.getDeviceName().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is String
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getDeviceName().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is String
    }else {
        // 失败
    }
}
```
