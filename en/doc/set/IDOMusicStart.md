# Control music start



### Example

Swift
```swift
Cmds.musicStart().send { rs in
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
Cmds.musicStart().send {
 if (it.error.code == 0) { 
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
