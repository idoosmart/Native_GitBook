# Quick message reply process (Android)



#### Step 1 

app sets the default quick message reply list

### `Cmds.setDefaultQuickMsgReplyList(param).send`
```kotlin
val param = IDOFastMsgSettingModel(0, listOf(
 IDOFastMsgItem(1, "test1"),
 IDOFastMsgItem(2, "test2"),
 IDOFastMsgItem(3, "test3"),
 IDOFastMsgItem(4, "test4"),
 MsgItem( 5, "test5")
 ))
Cmds.setDefaultQuickMsgReplyList(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 / / Failed
 }
}
```



#### Step 2

Send message notification to the device

### `Cmds.setNoticeAppName(param).send`

``` kotlin
 // Note that when the field msgID is greater than 0, quick reply is supported
val param = IDONoticeMesaageParamModel(
            1, 1, 19, 1, 7, "ido", "ido_demo", "ido_demo", listOf(
                IDONoticeMesaageParamItem(
                    1, "china"
                )
            )
        )
Cmds.setNoticeAppName(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure 
 }
}
```



#### Step 3

The watch receives a message notification, view the message details in the watch and click Quick Reply. The app receives the following notification, and the app replies to the processing result according to the notification. Watch

- [IDODeviceNotificationModel](../model/IDODeviceNotificationModel.md)

```kotlin
override fun listenDeviceNotification(status: IDODeviceNotificationModel) {
 println("listenDeviceNotification $status");
 // Quick SMS reply 
 if (status.controlEvt == 580 && status.controlJson != null) {
   println("status.controlJson: ${status.controlJson}")

   // 1 means quick reply to incoming calls
   if (msgItem.msgType == 1) {
       // TODO: Here the android system is called to send a quick reply to the third app and the reply result is obtained
       // val isSuccess = if (reply result) 1 else 0
   			var param = IDOFastMsgUpdateParamModel(1,msgItem. msgID, msgItem.msgType, msgItem.msgNotice)
       Cmds.setFastMsgUpdate(param).send {
          println("setFastMsgUpdate ${it.res?.toJsonString()}")
       }
 }else{
     // Third-party message 
     // TODO: Here the android system is called to send a quick reply to the third app and the reply result is obtained 
     // val isSuccess = if (reply result) 1 else 0
     var param = IDOFastMsgUpdateParamModel(1,msgItem.msgID, msgItem .msgType, msgItem.msgNotice)
     Cmds.setFastMsgUpdate(param).send {
      	println("setFastMsgUpdate ${it.res?.toJsonString()}")
     }
 }
 }
}
```



 

