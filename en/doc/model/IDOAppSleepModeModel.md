# `IDOAppSleepModeModel`

| Property | Type | Description |
| -------- | ---- | ----------- |
| sleepModeSwitch | Int | Sleep mode switch:<br/>1: on<br/>0: off<br/>0xFF: invalid/unknown |
| sleepHour | Int | Bedtime hour, 0~23 |
| sleepMinute | Int | Bedtime minute, 0~59 |
| awakeHour | Int | Wake hour, 0~23 |
| awakeMinute | Int | Wake minute, 0~59 |
| repeat | Int | Repeat mask<br/>bit0 invalid<br/>bit1~bit7 Mon~Sun |
| wakeAlarmRepeatCnt | Int | Wake alarm repeat count, 0~3 |
| wakeAlarmDelayTime | Int | Wake alarm delay in minutes, 1~15 |
