# 设置呼吸率开关
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setRespirationRate



### 参数说明：

| 字段名 | 字段类型 | 字段说明         |
| ------ | -------- | ---------------- |
| open   | Bool     | 0：关<br />1：开 |



### 示例

Swift
```swift
Cmds.setRRespiRateTurn().send { rs in
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
Cmds.setRRespiRateTurn().send {
    if (it.error.code == 0) {
        // 成功
    }else {
        // 失败
    }
}
```
