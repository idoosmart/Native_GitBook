# Set time 
* [IDODateTimeParamModel](../model/IDODateTimeParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### Example 

S swift
```swift
 let param = IDODateTimeParamModel(...)

Cmds.setDateTime(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else {
 / / failed
 }
}
```

Kotlin
```kotlin
val param = IDODateTimeParamModel(...)

Cmds.setDateTime(param).send {
 if (it.error.code == 0 ) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
``
