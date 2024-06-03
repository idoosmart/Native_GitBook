# `IDONoticeMessageStateModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| errCode | Int | 错误代码：0 表示成功，非 0 表示失败 |
| operat | Int | 操作<br/>1：添加<br/>2：修改<br/>3：获取查询 |
| allOnOff | Int | 查询有效<br/>回复整体通知开关状态<br/>1：开启所有通知，<br/>0：关闭所有通知<br/>-1：无效 |
| items | List<IDONoticeMessageStateItemItem> | [IDONoticeMessageStateItemItem](IDONoticeMessageStateItemItem.md) 集合 |
| musicItems | List<IDOMusicItem> | [IDOMusicItem](IDOMusicItem.md) 集合 |
