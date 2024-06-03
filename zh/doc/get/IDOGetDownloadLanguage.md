# 获取下载语言支持
* [IDODownloadLanguageModel](../model/IDODownloadLanguageModel.md)

功能表 : getDownloadLanguage

### 示例

Swift
```swift
Cmds.getDownloadLanguage().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDODownloadLanguageModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getDownloadLanguage().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDODownloadLanguageModel
    }else {
        // 失败
    }
}
```
