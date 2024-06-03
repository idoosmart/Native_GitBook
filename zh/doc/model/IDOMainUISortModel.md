# `IDOMainUISortModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| errCode | Int | 0：成功，非零：失败 |
| operate | Int | 操作<br/>0：无效 1：查询 2：设置 |
| allNum | Int | 固件中当前显示列表的数量 |
| supportItems | List<IDOMainUISortSupportItem> | [IDOMainUISortSupportItem](IDOMainUISortSupportItem.md) 集合 |
| items | List<IDOMainUISortItem> | [IDOMainUISortItem](IDOMainUISortItem.md) 集合 |
| locationX | Int | 横轴x <br />从1开始 |
| locationY | Int | 纵轴y <br />从1开始 |
| sizeType | Int | 图标类型<br />0:无效 <br />1:大图标 <br />2:小图标 |
| widgetsType | Int | 参考小组件类型列表 |

`widgets_type`
`小组件类型列表`

| 枚举值 | 含义                   |               |
| ------ | ---------------------- | ------------- |
| 0      | 无效                   | 1-100是小图标 |
| 1      | 活动三环 （小图标）    |               |
| 2      | 步数                   |               |
| 3      | 最近一次活动           |               |
| 4      | 音乐                   |               |
| 5      | 天气                   |               |
| 6      | 心率                   |               |
| 7      | 压力                   |               |
| 8      | 睡眠                   |               |
| 9      | Alexa                  |               |
| 10     | 体温                   |               |
| 11     | 血氧                   |               |
| 12     | 计时器                 |               |
| 13     | 闹钟                   |               |
| 14     | 事项提醒（现日程提醒） |               |
| 15     | 噪声                   |               |
| 16     | 电量                   |               |
| 17     | 电话（联系人）         |               |
| 18     | 世界时间               |               |
