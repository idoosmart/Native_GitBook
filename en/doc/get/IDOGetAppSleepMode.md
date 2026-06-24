# Get App Sleep Mode
* [IDOAppSleepModeModel](../model/IDOAppSleepModeModel.md)

Function table: supportAppSleepMode

### Example

Swift
```swift
Cmds.getAppSleepMode().send { rs in
    if case .success(let obj) = rs {
        // success
        // obj is IDOAppSleepModeModel
    } else {
        // failure
    }
}
```

Kotlin
```kotlin
Cmds.getAppSleepMode().send {
    if (it.error.code == 0) {
        // success
        // it.res is IDOAppSleepModeModel
    } else {
        // failure
    }
}
```
