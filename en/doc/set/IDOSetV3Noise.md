# Switch and threshold of ambient volume
* [IDOV3NoiseParamModel](../model/IDOV3NoiseParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: syncV3Noise

### Example

Swift
```swift
let param = IDOV3NoiseParamModel(...)

Cmds.setV3Noise(param).send { rs in
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
val param = IDOV3NoiseParamModel(...)

Cmds.set V3Noise(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
