# 获取屏幕亮度
* [IDOScreenBrightnessModel](../model/IDOScreenBrightnessModel.md)

功能表 : getScreenBrightnessMain9

### 示例

Swift
```swift
Cmds.getScreenBrightness().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOScreenBrightnessModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getScreenBrightness().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOScreenBrightnessModel
    }else {
        // 失败
    }
}
```
