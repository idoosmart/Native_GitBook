# 设置语音助手开关
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：getSupportSetVoiceAssistantStatus



### 参数说明：

| 字段名 | 字段类型 | 字段说明          |
| ------ | -------- | ----------------- |
| isOpen | bool     | 0：关 <br />1：开 |



### 示例

Swift
```swift
Cmds.setVoiceAssistantOnOff(isOpen: true).send { rs in
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
Cmds.setVoiceAssistantOnOff(isOpen: true).send {
    if (it.error.code == 0) {
        // 成功
    }else {
        // 失败
    }
}
```

ArkTs
```ts
let isOpen = true
Cmds.setVoiceAssistantOnOff(isOpen,(res)=>{
  if(res.success){
      //成功
      //it.value is IDOCmdSetResponseModel
  } else {
      //失败
  }
})
```
