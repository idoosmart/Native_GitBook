# Set menstrual period
* [IDOMenstruationModel](../model/IDOMenstruationModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### Example 

Swift
```swift
let param = IDOMenstruationModel(...)

Cmds.setMenstruation(param).send { rs in
 if case .success(let obj) = rs {
 // success
 // obj is IDOCmdSetResponseModel
 }else {
 / / failed
 }
}
```

Kotlin
```kotlin
val param = IDOMenstruationModel(...)

Cmds.setMenstruation(param).send {
 if (it.error.code == 0 ) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
``
