# Set the dial order
* [IDOWatchDialSortParamModel](../model/IDOWatchDialSortParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setWatchDialSort

 ### Example 

Swift
 ```Swift
let param = IdowatchDialSortparammodel (...) 

Cmds.setWatchDialSort(param).send {rs in
 if case .success (let obj) = rs {
 // obj is IDOCmdSetResponseModel
 }else {
 // Failed
 }
}
 ```

Kotlin
```kotlin
val param = IDOWatchDialSortParamModel(...)

Cmds.setWatchDialSort(param).send {
 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
