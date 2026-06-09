# IDODeviceVibrationRingtoneModel

| 属性 | 类型 | 说明 |
|------|------|------|
| operate | Int | `1` 查询 / `2` 设置 |
| version | Int | 首版 `0` |
| type | Int? | 子项掩码 bit0~2 |
| vibrationIntensity | Int? | 振动强度 |
| supportedVibrationIntensity | List\<Int\>? | 查询回复：支持的档位 |
| alarmVolume | Int? | 闹钟音量 |
| callReminderVolume | Int? | 来电音量 |
| errCode | Int? | 查询 `err_code` |
| retCode | Int? | 设置 `ret_code` |
