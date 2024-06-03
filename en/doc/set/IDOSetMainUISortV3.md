# Set the main interface control sorting
* [IDOMainUISortParamModel](../model/IDOMainUISortParamModel.md)
* [IDOMainUISortModel](../model/IDOMainUISortModel.md)

Function table: setSetMainUiSort

### Example

 Swift
```swift
let param = IDOMainUISortParamModel(...)

Cmds.setMainUISortV3(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOMainUISortModel
 }else {
 // Failed
 }
}
```

Kotlin
```kotlin
val param = IDOMainUISortParamModel(...)

Cmds.setMainUISo rtV3(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOMainUISortModel
 }else {
 // Failure
 }
}
```
