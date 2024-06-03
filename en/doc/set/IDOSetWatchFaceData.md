# Set the dial
* [IDOWatchFaceParamModel](../model/IDOWatchFaceParamModel.md)
* [IDOWatchFaceModel](../model/IDOWatchFaceModel.md)

Function table: getMultiDial

### Example

Swift
```swift
let param = IDOWatchFaceParamModel(...)

Cmds.setWatchFaceData(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOWatchFaceModel
 } else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOWatchFaceParamModel(...)

Cmds.setWatchFaceData(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOWatchFaceModel
 }else {
 // Failure
 }
}
``
