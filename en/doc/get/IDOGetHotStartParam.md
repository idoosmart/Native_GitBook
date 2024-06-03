# ~~Get hot start parameters~~
* [IDOHotStartParamModel](../model/IDOHotStartParamModel.md)

Function table: None 

Interface deprecated

### Example

Swift
```swift
 
 Cmds.getHotStartParam().send { rs in
 if case .success(let obj) = rs {
 // success
 // obj is IDOHotStartParamModel
 }else {
 // failure
 }
}
```

 
 Kotlin
```kotlin
Cmds.getHotStartParam().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOHotStartParamModel
 }else {
 // Failure
 } 
}
```
