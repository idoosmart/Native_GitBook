# Get HID information 
Function table: None 

### Example 

Swift
```swift
Cmds.getHidInfo().send { rs in 
 if case .success(let obj) = rs {
 // Success 
 // obj is Bool
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
Cmds.getHidInfo().send {
 if (it.error.code == 0) {
 // Success
 // it.res is Bool
 }else {
 // Failure
 }
}
```
