# `IDOAppSleepModeParamModel`

| Property | Type | Description |
| -------- | ---- | ----------- |
| sleepModeSwitch | Int | Sleep mode switch:<br/>1: on<br/>0: off |
| sleepHour | Int | Bedtime hour, 0~23, default 22 |
| sleepMinute | Int | Bedtime minute, 0~59, default 0 |
| awakeHour | Int | Wake hour, 0~23, default 7 |
| awakeMinute | Int | Wake minute, 0~59, default 0 |
| repeat | Int | Repeat mask<br/>bit0 invalid<br/>bit1~bit7 Mon~Sun, default 0x3E |
| wakeAlarmRepeatCnt | Int | Wake alarm repeat count, 0~3, default 3 |
| wakeAlarmDelayTime | Int | Wake alarm delay in minutes, 1~15, default 10 |
