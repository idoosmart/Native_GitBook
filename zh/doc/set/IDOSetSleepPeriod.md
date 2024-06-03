# 设置睡眠时间段
* [IDOSleepPeriodParamModel](../model/IDOSleepPeriodParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### 示例

Swift
```swift
let param = IDOSleepPeriodParamModel(...)

Cmds.setSleepPeriod(param).send { rs in
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
val param = IDOSleepPeriodParamModel(...)

Cmds.setSleepPeriod(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
