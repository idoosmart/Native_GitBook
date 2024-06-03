# `IDOWallpaperDialReplyV3Model`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| errCode | Int | 0 表示成功，非 0 表示失败 |
| operate | Int | 操作：0为查询，1为设置，2为删除壁纸表盘 |
| location | Int | 设置位置信息 |
| hideType | Int | 隐藏类型 |
| timeColor | Int | 时间控制颜色 |
| widgetType | Int | 控制类型 |
| widgetIconColor | Int | 小部件图标的颜色（保留 1 个字节 + R（1 个字节）+ G（1 个字节）+ B（1 个字节）） |
| widgetNumColor | Int | 小部件编号的颜色（保留 1 个字节 + R（1 个字节）+ G（1 个字节）+ B（1 个字节）） |
