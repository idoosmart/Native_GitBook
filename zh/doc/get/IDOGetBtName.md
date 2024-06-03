# 获取bt蓝牙名称
* [String](../model/String.md)

  功能表：getBtAddrV2



### 示例

Swift
```swift
Cmds.getBtName().send { rs in
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
Cmds.getBtName().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is String
    }else {
        // 失败
    }
}
```
