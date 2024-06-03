# 获取抬腕数据
* [IDOUpHandGestureModel](../model/IDOUpHandGestureModel.md)

功能表 : getUpHandGestureEx

### 示例

Swift
```swift
Cmds.getUpHandGesture().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOUpHandGestureModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getUpHandGesture().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOUpHandGestureModel
    }else {
        // 失败
    }
}
```
