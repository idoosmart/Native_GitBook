# Get real-time data

* [IDOLiveDataModel](../model/IDOLiveDataModel.md)

Function table:getRealtimeData

### Example

Swift

```swift
Cmds.getLiveData().send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDOLiveDataModel
     }else {
         // fail
     }
}
```

Kotlin

```kotlin
Cmds.getLiveData().send {
     if (it.error.code == 0) {
         // success
         // it.res is IDOLiveDataModel
     }else {
         // fail
     }
}
```
