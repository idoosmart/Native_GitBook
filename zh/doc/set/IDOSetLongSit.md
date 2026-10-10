# 设置久坐

> 已废弃。请使用走动提醒：[`setWalkRemind`](IDOSetWalkRemind.md) / [`getWalkRemind`](../get/IDOGetWalkRemind.md)。

* [IDOLongSitParamModel](../model/IDOLongSitParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSedentariness（已废弃，请使用 `setWalkReminder`）

### 示例

Swift
```swift
let param = IDOLongSitParamModel(...)

Cmds.setLongSit(param).send { rs in
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
val param = IDOLongSitParamModel(...)

Cmds.setLongSit(param).send {
    if (it.error.code == 0) {
        // 成功
    }else {
        // 失败
    }
}
```

ArkTs

```ts
let param = new IDOLongSitParamModel(...)
Cmds.setLongSit(param,(res)=>{
    if(res.success){
        //成功
        //it.value is IDOCmdSetResponseModel
    } else {
        //失败
    }
})
```