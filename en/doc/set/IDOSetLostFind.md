# Set anti-lost
* [IDOLostFindParamModel](../model/IDOLostFindParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: supportSetAntilost

### Example 

Swift
 ```swift
let param = IDOLostFindParamModel(...)

Cmds.setLostFind(param).send { rs in
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
val param = IDOLostFindParamModel(...)

Cmds.setLostFind(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
