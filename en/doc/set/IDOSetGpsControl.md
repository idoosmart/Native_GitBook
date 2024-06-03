# Set control gps
* [IDOGpsControlParamModel](../model/IDOGpsControlParamModel.md)
* [IDOGpsControlModel](../model/IDOGpsControlModel.md)

Function table: None

### Example


Swift
 ```swift
let param = IDOGpsControlParamModel(...)

Cmds.setGpsControl(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOGpsControlModel
 }else {
 // Failed
 }
}
 ```

Kotlin
```kotlin
val param = IDOGpsControlParamModel(...)

Cmds.setGpsControl(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOGpsControlModel
 }else {
 // Failure
 }
}
```
