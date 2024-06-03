# `IDODataTranConfigModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| errCode | Int | 错误代码<br/>0：正常<br/>非零：错误 |
| type | Int | 活动类型对应的图标类型<br/>0：无效<br/>1：活动小图标<br/>2：活动大图标<br/>3：活动动画图标<br/>4：中等大小的活动图标 |
| evtType | Int | 事件类型<br/>0：无效<br/>例如1：短信、2：邮件、3：微信等。 |
| sportType | Int | 活动类型<br/>0：无效<br/>活动模式类型，1：步行，2：跑步等。 |
| iconWidth | Int | 固件图标所需的宽度（由type和evt_type/sport_type决定） |
| iconHeight | Int | 固件图标所需的高度（由 type 和 evt_type/sport_type 决定） |
| format | Int | 颜色格式 |
| blockSize | Int | 压缩块大小 |
| bigSportsNum | Int | 大型体育图标的数量 |
| msgNum | Int | 消息图标数量 |
| smallSportsAndAnimationNum | Int | 体育、动画小图标数量 |
| mediumNum | Int | 中等大小图标的数量 |
