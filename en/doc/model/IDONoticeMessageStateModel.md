# `IDONoticeMessageStateModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| errCode | Int | Error code: 0 means success, non-0 means failure |
| operat | Int | Operation<br/>1: Add<br/>2: Modify<br/>3: Get query|
| allOnOff | Int | Query valid<br/>Reply the overall notification switch status<br/>1: Turn on all notifications,<br/>0: Turn off all notifications<br/>-1: Invalid|
| items | List<IDONoticeMessageStateItemItem> | [IDONoticeMessageStateItemItem](IDONoticeMessageStateItemItem.md) Collection |
| musicItems | List<IDOMusicItem> | [IDOMusicItem](IDOMusicItem.md) Collection |
