# 获取表盘列表 v2
* [IDOWatchListV2Model](../model/IDOWatchListV2Model.md)

功能表：getNewWatchList == false 使用该接口，否则使用[获取表盘列表 v3](IDOGetWatchListV3.md)

### 示例

Swift
```swift
Cmds.getWatchListV2().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOWatchListV2Model
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getWatchListV2().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOWatchListV2Model
    }else {
        // 失败
    }
}
```
