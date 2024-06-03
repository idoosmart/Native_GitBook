# Send the mobile phone volume to ble
* [IDOBleVoiceParamModel](../model/IDOBleVoiceParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setSetPhoneVoice

### Example

Swift
```swift
let param = IDOBleVoiceParamModel(...)

Cmds.setBleVoice(param).send { rs in
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
val param = IDOBleVoiceParamModel(...)

Cmds.setBle Voice(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
