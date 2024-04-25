# Display mode

* [IDODisplayModeParamModel](../model/IDODisplayModeParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: 

### Example

Swift
```Swift 
let Param = IDODisplayModeParamModel(...) 

Cmds.setDisplayMode(param).send {rs in
 if case .success (let Obj) = rs {
 // Obj is IDOCmdsetResponsemodel
} else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDODisplayModeParamModel(...)

Cmds.setDisplayMode(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
