# Get bt Bluetooth name 


 Function table: getBtAddrV2

### Example 

Swift
```swift
Cmds.getBtName( ).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is String
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 Cmds.getBtName().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is String
 }else {
 // Failure 
 }
}
```