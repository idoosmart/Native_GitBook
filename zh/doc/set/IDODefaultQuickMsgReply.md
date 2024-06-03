# 设置默认快速消息回复列表(Android)

* [IDOFastMsgSettingModel](../model/IDOFastMsgSettingModel.md)

### 示例

Kotlin

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