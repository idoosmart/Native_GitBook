# `IDOMusicControlParamModel`

| Description| Type| Properties|
| ------------ | ------- | ----------- |
| Status: 0: Invalid 1: Play 2: Pause 3: Stop | Int | status |
| Current play time unit: seconds | Int | curTimeSecond |
| Total play time unit: seconds | Int | totalTimeSecond |
| Music name ( Maximum 63 bytes) | String | musicName |
| Singer name (maximum 63 bytes)<br/>This value does not apply if v3MusicControl02AddSingerName is not enabled on the firmware | String | singerName |
