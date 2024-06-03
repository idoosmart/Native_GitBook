# Get the watch face list v3
* [IDOWatchListModel](../model/IDOWatchListModel.md)

Function table: getNewWatchList == true Use this interface, otherwise use [Get the watch face list v2](IDOGetWatchListV2.md)

### Example 

Swift
```swift
Cmds.getWatchListV3().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOWatchListModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
Cmds.getWatchListV3().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOWatchListModel
 }else {
 // Failed
 }
}
```
