# `IDONoticeMessageParamModel`

| Property | Type | Description |
| ----------- | ------- | ------------ |
| verison | Int | Protocol library version number<br/>Default version=1<br/>Version=2 is the sending format with msg_id |
| evtType | Int | Message application type |
| msgID | Int | Message ID<br/ >If evt_type is message reminder, mesg_ID is valid |
| supportAnswering | Bool | Support answering: 1<br/>Do not support answering: 0 |
| supportMute | Bool | Support muting: 1<br/>Do not support muting: 0 |
| supportHangUp | Bool | Support hangup: 1<br/>Do not support hangup: 0 |
| msgData | String | Message data |
| contact | String | Contact name (maximum 63 bytes) |
| phoneNumber | String | Phone number (maximum 31 bytes) |
| dataText | String | Message content (maximum 249 bytes) |
