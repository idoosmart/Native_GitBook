# Control music stop



### Example

Swift
```swift
Cmds.musicStop().send { rs in
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
Cmds.musicStop().send {
 if (it.error.code == 0) { 
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
