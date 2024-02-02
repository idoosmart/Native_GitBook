#Set the sports mode recognition switch
* [IDOActivitySwitchParamModel](../model/IDOActivitySwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Menu: setActivitySwitch

### Example

Swift
```swift
let param = IDOActivitySwitchParamModel(...)

Cmds.setActivitySwitch(param).send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDOCmdSetResponseModel
     }else {
         // fail
     }
}
```

Kotlin
```kotlin
val param = IDOActivitySwitchParamModel(...)

Cmds.setActivitySwitch(param).send {
     if (it.res != null) {
         // success
         // it.res is IDOCmdSetResponseModel
     }else {
         // fail
     }
}
```
