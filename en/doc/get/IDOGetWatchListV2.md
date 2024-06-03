# Get the watch face list v2
* [IDOWatchListV2Model](../model/IDOWatchListV2Model.md)

Function table: getNewWatchList == false Use this interface, otherwise use [Get the watch face list v3](IDOGetWatchListV3.md)

### Example 

Swift
```swift
Cmds.getWatchListV2().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOWatchListV2Model
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
Cmds.getWatchListV2().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOWatchListV2Model
 }else {
 // Failed
 }
}
```
