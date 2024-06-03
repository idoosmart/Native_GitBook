# Synchronize frequently used contacts
* [IDOSyncContactParamModel](../model/IDOSyncContactParamModel.md)
* [IDOSyncContactModel](../model/IDOSyncContactModel.md)

Function table: setSyncContact, reminderCallContact

### Example

Swift
```swift
let param = IDOSyncContactParamModel(...)

Cmds.setSyncContact(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOSyncContactModel
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOSyncContactParamModel(...)

Cmds.setSyncContact( param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOSyncContactModel
 }else {
 // Failure
 }
}
```
