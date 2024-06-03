# `IDOWatchItem`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| type | Int | 表盘类型<br/>1：普通表盘<br/>2：壁纸表盘<br/>3：云表盘 |
| watchVersion | Int | 表盘当前版本号（适用于云表盘） |
| sortNumber | Int | 表盘顺序号<br/>从 0 开始 |
| name | String | 表盘名称 |
| size | Int | 表盘大小，以字节为单位<br/>仅在固件启用 `getWatchDailSetAddSize `  时适用，否则该字段无效 |
