# Get error records

* [IDOErrorRecordModel](../model/IDOErrorRecordModel.md)

Function table:getFlashLog

### Example

Swift

```swift
Cmds.getErrorRecord().send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDOErrorRecordModel
     }else {
         // fail
     }
}
```

Kotlin

```kotlin
Cmds.getErrorRecord().send {
     if (it.error.code == 0) {
         // success
         // it.res is IDOErrorRecordModel
     }else {
         // fail
     }
}
```
