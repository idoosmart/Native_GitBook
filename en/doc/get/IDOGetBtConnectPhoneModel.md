# Get BT connected phone model 
Function table: getSupportGetV3DeviceBtConnectPhoneModel

### Example 

Swift
```swift
Cmds.getBtConnectPhoneModel().send { rs in
 if case .success (let obj) = rs {
 // Success
 // Obj is String
} else {
 // Failure
 }
 } 
```

kotlin
```kotlin
Cmds.getBtConnectPhoneModel().send {
 if (it.error.code == 0) {
 // Success
 // it.res is String
 }else {
 // Failure
 }
}
```
