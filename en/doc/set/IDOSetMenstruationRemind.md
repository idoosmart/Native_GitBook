#Set menstrual reminder
* [IDOMenstruationRemindParamModel](../model/IDOMenstruationRemindParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Menu: setMenstruation

### Example

Swift
```swift
let param = IDOMenstruationRemindParamModel(...)

Cmds.setMenstruationRemind(param).send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDOCmdSetResponseModel
     }else {
         // fail
     }
}
```

Kotlin
```kotlin
val param = IDOMenstruationRemindParamModel(...)

Cmds.setMenstruationRemind(param).send {
     if (it.res != null) {
         // success
         // it.res is IDOCmdSetResponseModel
     }else {
         // fail
     }
}
```
