# `IDOFastMsgSettingModel`

| 属性      | 类型 | 说明                            |
| --------- | ---- | ------------------------------- |
| type      | Int  | 0其它（默认）， 1来电消息版本号 |
| fastItems | List | 快速消息详情                    |



# `IDOFastMsgItem`

| 属性    | 类型   | 说明                     |
| ------- | ------ | ------------------------ |
| msgId   | Int    | 快速消息id 1开始         |
| msgData | String | 快速消息内容最大68个字节 |

