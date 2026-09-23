# Get firmware algorithm file information (ACC/GPS)

* [IDOAlgFileModel](../model/IDOAlgFileModel.md)

Function table: getSupportDeviceOperateAlgFile

### Example

Swift

```swift
Cmds.getAlgFileInfo().send { rs in
if case .success(let obj) = rs {
// Success
// obj is IDOAlgFileModel
}else {
// Failure
}
}
```

Kotlin

```kotlin
Cmds.getAlgFileInfo().send {
if (it.error.code == 0) {
// Success
// it.res is IDOAlgFileModel
}else {
// Failure
}
}
```
