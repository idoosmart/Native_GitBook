# 设置喝水提醒
* [IDODrinkWaterRemindModel](../model/IDODrinkWaterRemindModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### 示例

Swift
```swift
let param = IDODrinkWaterRemindModel(...)

Cmds.setDrinkWaterRemind(param).send { rs in
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
val param = IDODrinkWaterRemindModel(...)

Cmds.setDrinkWaterRemind(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
