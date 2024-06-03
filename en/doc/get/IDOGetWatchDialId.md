# Get watch face id
* [IDOWatchDialIdModel](../model/IDOWatchDialIdModel.md)

Function table: None

### Example

Swift
```swift
Cmds.getWatchDialId().send {rs in 
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOWatchDialIdModel
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
 Cmds.getWatchDialId().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOWatchDialIdModel
 }else {
 // Failure
 }
}
```
