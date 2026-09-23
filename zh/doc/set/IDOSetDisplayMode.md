# 显示模式
* [IDODisplayModeParamModel](../model/IDODisplayModeParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：

### 示例

Swift
```swift
let param = IDODisplayModeParamModel(...)

Cmds.setDisplayMode(param).send { rs in
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
val param = IDODisplayModeParamModel(...)

Cmds.setDisplayMode(param).send {
    if (it.error.code == 0) {
        // 成功
    }else {
        // 失败
    }
}
```

ArkTs

```ts
let param = new IDODisplayModeParamModel(...)
Cmds.setDisplayMode(param,(res)=>{
    if(res.success){
        //成功
        //it.value is IDOCmdSetResponseModel
    } else {
        //失败
    }
})
```