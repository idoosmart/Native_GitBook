# Set user information 
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)
* [IDOUserInfoPramModel]()



### Example 

Swift
```swift 
let param = IDOUserInfoPramModel(...)
Cmds.setUserInfo(param).send { rs in
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
Cmds.setWorldTimeV3().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOCmdSetResponseModel
 }else {
 / / failed
 }
}
```
