# 快速短信回复(Android)
* [IDOFastMsgUpdateParamModel](../model/IDOFastMsgUpdateParamModel.md)

### 示例

手表收到消息通知，查看消息详情里击快捷回复，并收到以下通知，需根据通知结果。参考 [完整流程](../logicDescription/quickMsgReplyList.md)

该指令属性回复设备，在收到固件通知时有效。

```kotlin
override fun listenDeviceNotification(status: IDODeviceNotificationModel) {
    println("listenDeviceNotification $status");
    // 快速短信回复
    if (status.controlEvt == 580 && status.controlJson != null) {
        println("status.controlJson: ${status.controlJson}")
      
      // 1 表示来电快捷回复
      if (msgItem.msgType == 1) {
          // TODO：此处调用android系统发送快捷回复到第三app，并获取到回复结果
          // val isSuccess = if (回复结果) 1 else 0
          var param = IDOFastMsgUpdateParamModel(1,msgItem.msgID, msgItem.msgType, msgItem.msgNotice)
          Cmds.setFastMsgUpdate(param).send {
              println("setFastMsgUpdate ${it.res?.toJsonString()}")
          }
      }else{
          // 第三方消息
          // TODO：此处调用android系统发送快捷回复到第三app，并获取到回复结果
          // val isSuccess = if (回复结果) 1 else 0
          var param = IDOFastMsgUpdateParamModel(1,msgItem.msgID, msgItem.msgType, msgItem.msgNotice)
          Cmds.setFastMsgUpdate(param).send {
              println("setFastMsgUpdate ${it.res?.toJsonString()}")
          }
      }
    }
}
```

