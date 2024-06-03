# Set shortcut
* [IDOShortcutParamModel](../model/IDOShortcutParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### Example


Swift
```swift 
let param = IDOShortcutParamModel(...)

Cmds.setShortcut(param).send { rs in
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
val param = IDOShortcutParamModel(...)

Cmds.setShortcut(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
