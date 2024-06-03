# `IDOWallpaperDialReplyV3ParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| operate | Int | 操作：0为查询，1为设置，2为删除壁纸表盘 |
| location | Int | 设置位置信息，参考9格布局 |
| hideType | Int | 隐藏类型：0表示全部显示，1表示隐藏子控件（图标和数字） |
| timeColor | Int | 时间控制颜色（保留1字节+R（1字节）+G（1字节）+B（1字节）） |
| widgetType | Int | 控制类型：1 表示周/日期、2 表示步数、3 表示距离、4 表示卡路里、5 表示心率、6 表示电池 |
| widgetIconColor | Int | 小部件图标的颜色（保留 1 个字节 + R（1 个字节）+ G（1 个字节）+ B（1 个字节）） |
| widgetNumColor | Int | 小部件编号的颜色（保留 1 个字节 + R（1 个字节）+ G（1 个字节）+ B（1 个字节）） |
