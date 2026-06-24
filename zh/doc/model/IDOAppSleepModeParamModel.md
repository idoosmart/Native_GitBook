# `IDOAppSleepModeParamModel`

| 属性 | 类型 | 说明 |
| ---- | ---- | ---- |
| sleepModeSwitch | Int | 睡眠模式开关：<br/>1：开<br/>0：关 |
| sleepHour | Int | 入睡时，0~23，默认 22 |
| sleepMinute | Int | 入睡分，0~59，默认 0 |
| awakeHour | Int | 起床时，0~23，默认 7 |
| awakeMinute | Int | 起床分，0~59，默认 0 |
| repeat | Int | 重复周期<br/>bit0 无效<br/>bit1~bit7 周一至周日，默认 0x3E |
| wakeAlarmRepeatCnt | Int | 清醒闹钟重复次数，0~3，默认 3 |
| wakeAlarmDelayTime | Int | 清醒闹钟提醒延迟，1~15 分钟，默认 10 |
