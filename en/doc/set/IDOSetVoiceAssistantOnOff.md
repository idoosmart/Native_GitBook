# Set the voice assistant switch
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: getSupportSetVoiceAssistantStatus

### Parameter description:

| Field name | Field type | Field description   |
| ---------- | ---------- | ------------------- |
| isOpen     | bool       | 0: Off <br /> 1: On |

### Example

Swift
```swift
Cmds.setVoiceAssistantOnOff(isOpen: true).send { rs in
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
Cmds.setVoiceAssistantOnOff(isOpen: true).send {
if (it.error.code == 0) {
// Success
}else {
// Failure
}
}
```
