# `IDONoticeMesaageParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| verison | Int | 协议库版本号 |
| osPlatform | Int | 系统0：无效，1：Android，2：iOS |
| evtType | Int | 当前模式 0：无效，1：消息提醒 |
| notifyType | Int | 消息枚举类型 最大值：20000 |
| msgID | Int | 消息ID 仅当evt_type为消息提醒且msg_ID不为0时有效 |
| appItemsLen | Int | 国家/地区数量和语言详细信息 |
| contact | String | 联系人姓名（最大 63 字节） |
| phoneNumber | String | 电话号码（最大 31 字节） |
| msgData | String | 消息内容（最大249字节） |
