# Set up the screen when raising your hand
* [IDOUpHandGestureParamModel](../model/IDOUpHandGestureParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: getUpHandGesture

 
### Example

 Swift
```swift
let param = IDOUpHandGestureParamModel(...)

Cmds.setUpHandGesture(param).send { rs in
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
val param = IDOUpHandGestureParamModel(...)

Cmds.set UpHandGesture(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
