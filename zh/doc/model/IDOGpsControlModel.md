# `IDOGpsControlModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| type | Int | 1：启用日志<br/>2：禁用日志<br/>3：写入AGPS数据<br/>4：擦除AGPS数据<br/>5：写入GPS固件 |
| status | Int | 0：无效<br/>1：命令正在进行<br/>2：已完成 |
| errorCode | Int | 0 表示成功，非 0 表示失败 |
