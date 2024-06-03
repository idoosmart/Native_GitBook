# Get wrist-raising data
* [IDOUpHandGestureModel](../model/IDOUpHandGestureModel.md)

Function table: getUpHandGestureEx

### Example

Swift
```swift
Cmds.getUp HandGesture().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOUpHandGestureModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 
Cmds.getUpHandGesture().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOUpHandGestureModel
 }else {
 // Failure
 }
}
```
