# Set the default quick message reply list (Android) 

* [IDOFastMsgSettingModel](../model/IDOFastMsgSettingModel.md)

### Example 

Kotlin

```kotlin
val param = IDOFastMsg SettingModel(0, listOf (
 IDOFastMsgItem(1, "test1"),
 IDOFastMsgItem(2, "test2"),
 IDOFastMsgItem(3, "test3"),
 IDOFastMsgItem(4, "test4"),
 IDOFastMsgItem(5, "test5") 
 ))
Cmds.setDefaultQuickMsgReplyList(param).send {
 if (it.error.code == 0) {
 	// Success 
 	// it.res is IDOCmdSetResponseModel
 }else {
 	// Failure 
 }
 
} 
```