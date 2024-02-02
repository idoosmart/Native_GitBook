# Control music stop



### Example

Swift
```swift
Cmds.musicStop().send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDOCmdSetResponseModel
     }else {
         // fail
     }
}
```

Kotlin
```kotlin
Cmds.musicStop().send {
     if (it.res != null) {
         // success
         // it.res is IDOCmdSetResponseModel
     }else {
         // fail
     }
}
```
