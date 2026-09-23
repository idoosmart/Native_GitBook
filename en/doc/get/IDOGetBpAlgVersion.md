# Get the blood pressure algorithm three-level version number information event number 
* [IDOBpAlgVersionModel](../model/IDOBpAlgVersionModel.md) 

Function table: setSupportV3Bp

### Example 

Swift
```swift
Cmd s.getBpAlgVersion().send {rs in
 if case .success (let obj) = rs {
   // Success
   // obj is IDOBpAlgVersionModel
  } else {
   // Failure
   }
} 
```

kotlin
```kotlin
Cmds.getBpAlgVersion().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOBpAlgVersionModel
 }else {
 // Failure
 }
}
```
