# 设置科学睡眠开关
* [IDOScientificSleepSwitchParamModel](../model/IDOScientificSleepSwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setScientificSleepSwitch

### 示例

Swift
```swift
let param = IDOScientificSleepSwitchParamModel(...)

Cmds.setScientificSleepSwitch(param).send { rs in
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
val param = IDOScientificSleepSwitchParamModel(...)

Cmds.setScientificSleepSwitch(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
