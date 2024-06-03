# Set sports type sorting
* [IDOSportParamModel](../model/IDOSportParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: getSportsTypeV3

### Example


Swift 
```swift
let param = IDOSportParamModel(...)

Cmds.setSportSortV3(param).send { rs in
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
val param = IDOSportParamModel(...)

Cmds.setSportSortV3(param).send { 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
