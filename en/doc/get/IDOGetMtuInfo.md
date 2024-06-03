# Get mtu information 
* [IDOMtuInfoModel](../model/IDOMtuInfoModel.md)

Function table:getMtu

### Example 

Swift
```swift
Cmds.getMtuInfo().send { rs in 
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOMtuInfoModel
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
 Cmds.getMtuInfo().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOMtuInfoModel
 }else {
 // Failure
 }
}
```
