# Set sedentaryness

> Deprecated. Use walk reminder: [`setWalkRemind`](IDOSetWalkRemind.md) / [`getWalkRemind`](../get/IDOGetWalkRemind.md).

* [IDOLongSitParamModel](../model/IDOLongSitParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setSedentariness (deprecated; use `setWalkReminder`)

### Example 

Swift
 ```swift
let param = IDOLongSitParamModel(...)

Cmds.setLongSit(param).send { rs in
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
val param = IDOLongSitParamModel(...)

Cmds.setLongSit(param).send {
 if (it.error.code == 0) {
 // Success
 }else {
 // Failure
 }
}
```
