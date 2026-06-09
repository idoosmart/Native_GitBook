# Set watch face 
* [IDOWatchDialParamModel](../model/IDOWatchDialParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: WatchDial

### Example


Swift
```swift
let param = IDOWatchDialParamModel(...)

Cmds.setWatchDial(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 } else {
   // Failure
 }
} 
```

kotlin
```Kotlin
val param = IDOWatchDialParamModel (...) 

cmds.setWatchDial(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
