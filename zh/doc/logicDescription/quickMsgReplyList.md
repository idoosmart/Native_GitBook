# 快捷消息回复流程(Android)



#### 步骤1 

app设置默认快速消息回复列表

### `Cmds.setDefaultQuickMsgReplyList(param).send`
```kotlin
val param = IDOFastMsgSettingModel(0, listOf(
            IDOFastMsgItem(1, "test1"),
            IDOFastMsgItem(2, "test2"),
            IDOFastMsgItem(3, "test3"),
            IDOFastMsgItem(4, "test4"),
            IDOFastMsgItem(5, "test5")
        ))
Cmds.setDefaultQuickMsgReplyList(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```



#### 步骤2

下发消息通知到设备

### `Cmds.setNoticeAppName(param).send`

```kotlin
// 注意字段msgID大于0时支持快捷回复
val param = IDONoticeMesaageParamModel(
            1, 1, 19, 1, 7, "ido", "ido_demo", "ido_demo", listOf(
                IDONoticeMesaageParamItem(
                    1, "china"
                )
            )
        )
Cmds.setNoticeAppName(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```



#### 步骤3

手表收到消息通知，手表中查看消息详情里击快捷回复，app收到以下通知，app根据通知把处理结果回复至手表

- [IDODeviceNotificationModel](../model/IDODeviceNotificationModel.md)

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





