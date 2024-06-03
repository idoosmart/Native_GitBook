# Get the modification time of the contact file saved locally by the firmware

* [IDOContactReviseTimeModel](../model/IDOContactReviseTimeModel.md)

Function table: reminderGetAllContact

### Example

Swift

```swift
Cmds.getContactReviseTime().send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDOContactReviseTimeModel
     }else {
         // fail
     }
}
```

Kotlin

```kotlin
Cmds.getContactReviseTime().send {
     if (it.error.code == 0) {
         // success
         // it.res is IDOContactReviseTimeModel
     }else {
         // fail
     }
}
```
