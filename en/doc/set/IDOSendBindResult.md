# Quick SMS Reply (Android)
* [IDOFastMsgUpdateParamModel](../model/IDOFastMsgUpdateParamModel.md)

### Example 

The watch receives a message notification, click Quick Reply to view the message details, and receive the following notification, The results are subject to notification. Refer to [Full process](../logicDescription/quickMsgReplyList.md)

This command attribute replies to the device and is valid when receiving firmware notification. 

```kotlin
override fun listenDeviceNotification(status: IDODeviceNotificationModel) {
 println("listenDeviceNotification $status");
 // Quick SMS reply
   if (status.controlEvt == 580 && status.controlJson != null) { 
   println("status.controlJson: ${status.controlJson}")

   // 1 means a quick reply to an incoming call 
   if (msgItem.msgType == 1) {
     // TODO: Call the android system here to send a quick reply to The third app, and get the reply result
     // val isSuccess = if (reply result) 1 else 0
     var param = IDOFastMsgUpdateParamModel(1,msgItem.msgID, msgItem.msgType, msgItem.msgNotice)
     Cmds.setFastMsgUpdate(param) .send {
     println("setFastMsgUpdate ${it.res?.toJsonString()}")
   }
   }else{
     // Third-party message
     // TODO: Call the android system here to send a quick reply to the third app , and get the reply result
     // val isSuccess = if (reply result) 1 else 0
     var param = IDOFastMsgUpdateParamModel(1,msgItem.msgID, msgItem.msgType, msgItem.msgNotice)
     Cmds.setFastMsgUpdate(param).send { 
     println("setFastMsgUpdate ${it.res?.toJsonString()}")
     }
   }
   }
}
```

