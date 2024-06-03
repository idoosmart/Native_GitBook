# `IDONoticeMessageStateParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| operat | Int | 操作1：添加2：修改3：获取查询 |
| allOnOff | Int | 仅添加和修改<br/>整体通知开关<br/>1：开启所有通知<br/>0：关闭所有通知 |
| allSendNum | Int | 总发送包数<br/>分批发送超过100个包<br/>all_send_num = now_send_index表示发送完成 |
| nowSendIndex | Int | 当前发送顺序 |
| items | List<IDONoticeMessageStateItemItem> | [IDONoticeMessageStateItem](IDONoticeMessageStateItem.md) 集合 |

