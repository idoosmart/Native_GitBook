# `IDOWatchFaceModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| errCode | Int | 错误码，0表示成功，非0表示错误 |
| operate | Int | 操作：<br/>0 - 查询当前使用的表盘<br/>1 - 设置表盘<br/>2 - 删除表盘<br/>3 - 动态请求空间设置对应的空间大小 |
| fileName | String | 表盘名称，最大29字节 |
| fileCount | Int | 文件数量需要固件启用功能表`getWatchDailSetAddSize`<br/>如果operate!=3，这个数据和之前一样，都是1，保存方式和之前一样<br/>如果operate=3：动态请求space 设置对应的空间大小，这个对应删除的文件名列<br/>如果没有启用`getWatchDailSetAddSize`，该字段默认为1 |
