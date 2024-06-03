# Distribution of historical menstrual data
* [IDOHistoricalMenstruationParamModel](../model/IDOHistoricalMenstruationParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setHistoryMenstrual

### Example

Swift
```swift
let param = IDOHistoricalMenstruationParamModel(...)

Cmds.setHistoricalMenstruation(param).send { rs in
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
val param = IDOHistoricalMenstruationParamModel(...)

Cmds. setHistoricalMenstruation(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
