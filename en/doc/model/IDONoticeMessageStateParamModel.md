# `IDONoticeMessageStateParamModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| operat | Int | Operation 1: Add 2: Modify 3: Get query | 
| allOnOff | Int | Only add and modify<br/>Overall notification switch<br/>1: Turn on all notifications<br/>0: Turn off all Notification |
| allSendNum | Int | Total number of packets sent<br/>Send more than 100 packets in batches<br/>all_send_num = now_send_index indicates sending is completed |
| nowSendIndex | Int | Current sending order|
| items | List< IDONoticeMessageStateItemItem> | [IDONoticeMessageStateItem](IDONoticeMessageStateItem.md) Collection |

