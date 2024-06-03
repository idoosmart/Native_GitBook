# `IDOGpsInfoModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| errCode | Int | GPS 错误代码<br/>0 - 正常，非零 - 异常 |
| fwVersion | Int | GPS固件版本 |
| agpsInfo | Int | AGPS（辅助GPS）的有效期 |
| agpsErrCode | Int | AGPS 错误代码 |
| utcYear | Int | 世界标准时间年份 |
| utcMonth | Int | 世界标准时间月份 |
| utcDay | Int | 世界标准时间 |
| utcHour | Int | 世界标准时间 |
| utcMinute | Int | UTC 分钟 |
| startMode | Int | 启动模式<br/>1 - 冷启动<br/>2 - 热启动 |
| gns | Int | 定位卫星选择<br/>1 - GPS<br/>2 - GLONASS<br/>3 - GPS + GLONASS |
| fixStartBit | Int | 固定起始位<br/>默认0，用于调试 |
