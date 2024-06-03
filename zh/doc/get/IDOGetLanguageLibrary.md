# 获取语言库列表
* [IDOLanguageLibraryModel](../model/IDOLanguageLibraryModel.md)

功能表:getLangLibraryV3

### 示例

Swift
```swift
Cmds.getLanguageLibrary().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOLanguageLibraryModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getLanguageLibrary().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOLanguageLibraryModel
    }else {
        // 失败
    }
}
```
