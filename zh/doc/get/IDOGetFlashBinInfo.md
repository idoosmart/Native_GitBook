# 获取字库信息
* [IDOFlashBinInfoModel](../model/IDOFlashBinInfoModel.md)

功能表 : getFlashLog

### 示例

Swift
```swift
Cmds.getFlashBinInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOFlashBinInfoModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getFlashBinInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOFlashBinInfoModel
    }else {
        // 失败
    }
}
```
