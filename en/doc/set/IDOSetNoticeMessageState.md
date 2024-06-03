# Set message notification status 
* [IDONoticeMessageStateParamModel](../model/IDONoticeMessageStateParamModel.md)
* [IDONoticeMessageStateModel](../model/IDONoticeMessageStateModel.md)



### Example 

Swift 
``` swift
let param = IDONoticeMessageStateParamModel(...)

Cmds.setNoticeMessageState(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDONoticeMessageStateModel
 }else { 
 // Failed
 }
}
```

Kotlin
```kotlin
val param = IDONoticeMessageStateParamModel(...)

Cmds.setNoticeMessageState(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDONoticeMessageStateModel
 }else {
 // Failure
 }
}
```
