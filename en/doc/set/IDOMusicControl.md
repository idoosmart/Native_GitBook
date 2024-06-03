#Control music
* [IDOMusicControlParamModel](../model/IDOMusicControlParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setBleControlMusic

 ### Example 

Swift
```swift
let param = IDOMusicControlParamModel(...)

Cmds.musicControl(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 } else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOMusicControlParamModel(...)

Cmds.musicControl(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
