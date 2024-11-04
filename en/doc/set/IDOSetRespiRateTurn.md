# Set the respiration rate switch
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setRespirationRate

### Parameter description:

| Field name | Field type | Field description |
| ---------- | ---------- | ----------------- |
| open       | Bool       | 0: Off<br />1: On |

### Example

Swift
```swift
Cmds.setRRespiRateTurn().send { rs in
if case .success(let obj) = rs {
// Success
// obj is IDOCmdSetResponseModel
}else {
// Failure
}
}
```

Kotlin
```kotlin
Cmds.setRRespiRateTurn().send {
if (it.error.code == 0) {
// Success
// it.res is IDOCmdSetResponseModel
}else {
// Failed
}
}
```
