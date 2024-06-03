# `IDOSport100SortModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| errCode | Int | 0：成功，非零：失败 |
| operate | Int | 操作<br/>0：无效 1：查询 2：设置 |
| minShowNum | Int | 要显示的最小项目数，至少 1 |
| maxShowNum | Int | 最大显示项数，最大20 |
| nowUserLocation | Int | 显示添加的运动项目的当前位置，应用程序根据该位置进行显示，之前添加的设备对应该位置，之后添加的设备对应该位置之后的位置。仅对查询有效 |
| items | List<IDOSport100SortItem> | 集合 [IDOSport100SortItem](IDOSport100SortItem.md) |

