# Set medication reminder
* [IDOTakingMedicineReminderParamModel](../model/IDOTakingMedicineReminderParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### Example 

Swift
``` swift
let param = IDOTakingMedicineReminderParamModel(...)

Cmds.setTakingMedicineReminder(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else { 
 // Failed
 }
}
```

Kotlin
```kotlin
val param = IDOTakingMedicineReminderParamModel(...)

Cmds.setTakingMedicineReminder(param).send {
 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
