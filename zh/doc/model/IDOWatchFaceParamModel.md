# `IDOWatchFaceParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| operate | Int | 操作：<br/>0 - 查询当前使用的表盘<br/>1 - 设置表盘<br/>2 - 删除表盘<br/>3 - 动态请求空间设置对应的空间大小 |
| fileName | String | 表盘名称，最大29字节 |
| watchFileSize | Int | 未压缩的文件长度<br/>固件打开功能表`getWatchDailSetAddSize`后，应用程序需要发送该字段<br/>在表盘传输之前，固件需要分配相应的空间来保存，未压缩的文件长度需要传输的文件长度 |
