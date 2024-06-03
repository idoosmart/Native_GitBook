# Voice reply text
* [IDOVoiceReplyParamModel](../model/IDOVoiceReplyParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: getSportsTypeV3

### Example

Swift
 ```swift
let param = IDOVoiceReplyParamModel(...)

Cmds.setVoiceReplyText(param).send { rs in
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
val param = IDOVoiceReplyParamModel(...)

Cmds.setVoiceReplyText(param).send {
 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
