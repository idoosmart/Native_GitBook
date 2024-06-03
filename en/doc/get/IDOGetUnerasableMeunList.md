# Get the shortcut application list that cannot be deleted by the firmware
* [IDOUnerasableMeunListModel](../model/IDOUnerasableMeunListModel.md)

Function table: getDeletableMenuListV2

### Example

Swift
```swift
Cm ds.getUnerasableMeunList().send { rs in
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOUnerasableMeunListModel
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
Cmds.getUnerasableMeunList().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOUnerasableMeunListModel
 }else {
 // Failure
 }
}
```
