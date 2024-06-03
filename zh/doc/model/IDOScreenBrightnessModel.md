# `IDOScreenBrightnessModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| level | Int | 亮度级别<br/>(0-100) |
| opera | Int | 0 自动<br/>1 手动<br/>如果是自动同步配置，请发送00；如果是用户调整，请发送01 |
| mode | Int | 0 指定级别<br/>1 使用环境光传感器<br/>2 级别无关紧要 |
| autoAdjustNight | Int | 夜间自动亮度调节<br/>0 无效，由固件定义<br/>1 关闭<br/>2 夜间自动亮度调节<br/>3 夜间亮度降低使用设定时间 |
| startHour | Int | 开始时间 小时 |
| startMinute | Int | 开始时间 分钟 |
| endHour | Int | 结束时间 小时 |
| endMinute | Int | 结束时间分钟 |
| nightLevel | Int | 夜间亮度 |
| showInterval | Int | 显示间隔 |
