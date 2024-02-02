# Set menu list
* [IDOMenuListParamModel](../model/IDOMenuListParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Menu: setMenuListMain7

### Example

Swift
```swift
let param = IDOMenuListParamModel(...)

Cmds.setMenuList(param).send { rs in
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
val param = IDOMenuListParamModel(...)

Cmds.setMenuList(param).send {
     if (it.res != null) {
         // success
         // it.res is IDOCmdSetResponseModel
     }else {
         // fail
     }
}
```
