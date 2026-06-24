# Set App Sleep Mode
* [IDOAppSleepModeParamModel](../model/IDOAppSleepModeParamModel.md)
* [IDOAppSleepModeReplyModel](../model/IDOAppSleepModeReplyModel.md)

Function table: supportAppSleepMode

### Example

Swift
```swift
let param = IDOAppSleepModeParamModel(sleepModeSwitch: 1)

Cmds.setAppSleepMode(param).send { rs in
    if case .success(let obj) = rs {
        // success
        // obj is IDOAppSleepModeReplyModel
    } else {
        // failure
    }
}
```

Kotlin
```kotlin
val param = IDOAppSleepModeParamModel(sleepModeSwitch = 1)

Cmds.setAppSleepMode(param).send {
    if (it.error.code == 0) {
        // success
        // it.res is IDOAppSleepModeReplyModel
    } else {
        // failure
    }
}
```
