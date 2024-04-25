# Static message notification
* [IDONoticeMessageParamModel](../model/IDONoticeMessageParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: getNotifyMsgV3

### Example 

Swift
 ```swift
let param = IDONoticeMessageParamModel(...)

Cmds.noticeMessageV3(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDONoticeMessageParamModel(...)

Cmds.noticeMessageV3(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
