# 经期的历史数据下发
* [IDOHistoricalMenstruationParamModel](../model/IDOHistoricalMenstruationParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setHistoryMenstrual

### 示例

Swift
```swift
let param = IDOHistoricalMenstruationParamModel(...)

Cmds.setHistoricalMenstruation(param).send { rs in
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
val param = IDOHistoricalMenstruationParamModel(...)

Cmds.setHistoricalMenstruation(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
