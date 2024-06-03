# `IDOErrorRecordModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| type | Int | 0 查询<br/>1 清除日志 |
| resetFlag | Int | 0 正常<br/>1 硬故障<br/>2 看门狗服务<br/>3 断言重置<br/>4 断电服务<br/>5 其他异常 |
| hwError | Int | 硬件错误代码<br/>0 正常<br/>1 加速度计错误<br/>2 心率错误<br/>3 TP 错误<br/>4 闪存错误 |
