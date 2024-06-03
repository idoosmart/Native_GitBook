# Restore factory settings 
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### Example 

Swift
```swift
Cmds.factoryReset().send { rs in
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
Cmds.factoryRe set().send {
 if (it.error.code == 0) {
 	// Success
 	// it.res is IDOCmdSetResponseModel
 }else {
 	// Failure
 }
}
```
