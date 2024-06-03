# Set menu list 
* [IDOMenuListParamModel](../model/IDOMenuListParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setMenuListMain7

### Example 

Swift
 ```swift
let param = IDOMenuListParamModel(...)

Cmds.setMenuList(param).send { rs in
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
val param = IDOMenuListParamModel(...)

Cmds.setMenuList(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
