# Set hot start parameters

* [IDOGpsHotStartParamModel](../model/IDOGpsHotStartParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

### Example


Swift

``` Swift
let param = IDOGpsHotStartParamModel (...) 

Cmds.setHotStartParam (param).send {rs In
 if case .success (let obj) = rs {
 // obj is IDOCmdSetResponseModel
} else { 
 // Failed
 }
}
```

Kotlin

```kotlin
val param = IDOGpsHotStartParamModel(...)

Cmds.setHotStartParam(param).send {
 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```

