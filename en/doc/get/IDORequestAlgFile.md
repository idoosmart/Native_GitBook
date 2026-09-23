# Get device algorithm file

* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: getSupportDeviceOperateAlgFile

### Parameter description:

| Field name | Field type | Field description            |
| ---------- | ---------- | ---------------------------- |
| type       | int        | 1: ACC file<br />2: GPS file |

### Example

Swift

```swift
// 1: ACC file, 2: GPS file
let type = 1
Cmds.rquestAlgFile(type: type).send { rs in
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
// 1: ACC file, 2: GPS file
final type = 1
Cmds.rquestAlgFile(type: type).send {
if (it.error.code == 0) {
// Success
// it.res is IDOCmdSetResponseModel
}else {
// Failure
}
}
```
