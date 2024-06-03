# 设置屏幕亮度
* [IDOScreenBrightnessModel](../model/IDOScreenBrightnessModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setScreenBrightness

### 示例

Swift
```swift
let param = IDOScreenBrightnessModel(...)

Cmds.setScreenBrightness(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOScreenBrightnessModel(...)

Cmds.setScreenBrightness(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
