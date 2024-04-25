# Set the sleep period
* [IDOSleepPeriodParamModel](../model/IDOSleepPeriodParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### Example
 

Swift
``` swift
let Param = IDOSLEEPEPERIDPARAMMOL (...) 

Cmds.setsleepPeriod (param) .send {RS In
 IF Case .success (Let Obj) = RS {
 // Obj IS Id IS Id IDDSetRE sponsemodele} else { 
 // Failed
 }
}
```

Kotlin
```kotlin
val param = IDOSleepPeriodParamModel(...)

Cmds.setSleepPeriod(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
