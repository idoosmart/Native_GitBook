# Query bt pairing switch, connection, a2dp connection, hfp connection status (only supports devices with bt Bluetooth)
* [IDOBtNoticeModel](../model/IDOBtNoticeModel.md)

Function table: getBleAndBtVersion

### Example 

Swift
```swift
Cmds.getBtNotice().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOBtNoticeModel
 }else {
 // Failure
 
 }
}
```

Kotlin
```kotlin
Cmds.getBtNotice().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOBtNoticeModel
 }else {
 // Failure
 }
}
```
