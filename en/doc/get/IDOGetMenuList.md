# Get the list of device support 
* [IDOMenuListModel](../model/IDOMenuListModel.md)

Function table: getMenuList

### Example 

Swift
```swift
Cmds.getMenuList().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOMenuListModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 
Cmds.getMenuList().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOMenuListModel
 }else {
 // Failure 
 }
}
```
