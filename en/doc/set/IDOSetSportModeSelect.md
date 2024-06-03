# Set motion mode selection
* [IDOSportModeSelectParamModel](../model/IDOSportModeSelectParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: syncTimeLine

### Example 

Swift 
```swift
let Param = IDOSportModeSelectParamModel (...) 

Cmds.setSportModeSelect(param).send {rs In
 if case .success (let obj) = rs {
 // obj is IDOCmdSetResponseModel
 }else {
 // failed
 }
}

```

Kotlin
```kotlin
val param = IDOSportModeSelectParamModel(...)

Cmds.setSportModeSelect(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
