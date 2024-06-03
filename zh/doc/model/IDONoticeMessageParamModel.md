# `IDONoticeMessageParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| verison | Int | 协议库版本号<br/>默认version=1<br/>Version=2为发送格式带msg_id |
| evtType | Int | 消息应用类型 |
| msgID | Int | 消息ID<br/>若evt_type为消息提醒，则mesg_ID有效 |
| supportAnswering | Bool | 支持接听：1<br/>不支持接听：0 |
| supportMute | Bool | 支持静音：1<br/>不支持静音：0 |
| supportHangUp | Bool | 支持挂断：1<br/>不支持挂断：0 |
| msgData | String | 消息数据 |
| contact | String | 联系人姓名（最大 63 字节） |
| phoneNumber | String | 电话号码（最大 31 字节） |
| dataText | String | 消息内容（最大249字节） |
