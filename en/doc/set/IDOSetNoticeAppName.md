# Dynamic message notification
* [IDONoticeMesaageParamModel](../model/IDONoticeMesaageParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### Example

Swift
```swift 
let param = IDONoticeMesaageParamModel(...)

Cmds.setNoticeAppName(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else { 
 // Failed
 }
}
```

Kotlin
```kotlin
val param = IDONoticeMesaageParamModel(...)

Cmds.setNoticeAppName(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
