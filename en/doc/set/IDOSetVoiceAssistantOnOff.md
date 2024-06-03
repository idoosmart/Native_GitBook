# Set the voice assistant switch
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: getSupportSetVoiceAssistantStatus

### Example

Swift
```swift 
Cmds.setVoiceAssistantOnOff().send { rs in
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
Cmds. setVoiceAssistantOnOff().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
