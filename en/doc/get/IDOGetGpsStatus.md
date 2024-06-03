# Get gps status 
* [IDOGpsStatusModel](../model/IDOGpsStatusModel.md)

Function table:getSupportUpdateGps

### Example 

Swift
```swift
Cmds.getGpsStatus().send { rs in 
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOGpsStatusModel
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
 
Cmds.getGpsStatus().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOGpsStatusModel
 }else {
 // Failure
 }
}
```
