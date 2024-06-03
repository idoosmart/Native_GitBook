# Set Do Not Disturb mode
* [IDONotDisturbParamModel](../model/IDONotDisturbParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setDoNotDisturb 

### Example 

Swift 
```swift
let param = IDONotDisturbParamModel(...)

Cmds.setNotDisturb(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel 
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
val param = IDONotDisturbParamModel(...)

Cmds.setNotDisturb(param).send { 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
