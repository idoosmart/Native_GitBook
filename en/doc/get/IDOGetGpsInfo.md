# Get gps information 
* [IDOGpsInfoModel](../model/IDOGpsInfoModel.md)

Function table:getSupportUpdateGps

### Example 

Swift
```swift
Cmds.getGpsInfo().send {rs in 
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOGpsInfoModel
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
 Cmds.getGpsInfo().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOGpsInfoModel
 }else {
 // Failure
 }
}
```
