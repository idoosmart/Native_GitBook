# Set One Touch Calling

* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: supportSetOnetouchCalling

### Example

Swift
```swift
Cmds.setOnekeySOS().send { rs in
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
Cmds. setOnekeySOS().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
