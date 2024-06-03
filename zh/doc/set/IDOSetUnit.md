# 设置单位
* [IDOUnitParamModel](../model/IDOUnitParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：
setSupportFahrenheit（二级功能表）
setSupportCalorieUnitt（二级功能表）
setSupportSwimPoolUnitt（二级功能表）
setSupportCyclingUnitt（二级功能表）
setSupportWalkRunUnitt（二级功能表）

### 示例

Swift
```swift
let param = IDOUnitParamModel(...)

Cmds.setUnit(param).send { rs in
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
val param = IDOUnitParamModel(...)

Cmds.setUnit(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
