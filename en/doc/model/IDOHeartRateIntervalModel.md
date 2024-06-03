# `IDOHeartRateIntervalModel`

| Property | Type | Description |
| ----------- | ------- | ------------ |
| burnFatThreshold | int | Fat training heart rate zone<br/>Calculation rule: 50%-69% of maximum heart rate<br/>Unit: beats/minute|
| aerobicThreshold | int | Cardiopulmonary training heart rate zone<br/>Calculation rule: 70%-84% of maximum heart rate<br/>Unit: times/minute|
| limitThreshold | int | Peak training heart rate zone<br/>Calculation rules: 85%-100% of maximum heart rate<br/>Unit: times /minute|
| userMaxHr | int | Upper limit of heart rate, maximum heart rate reminder<br/>Unit: times/minute|
| range1 | int | Warm-up heart rate zone<br/>Calculation rule: (200-age) * 50< br/>Unit: times/minute|
| range2 | int | Fat burning heart rate zone<br/>Calculation rule: (200-age) * 60<br/>Unit: times/minute|
| range3 | int | Yes Aerobic exercise heart rate zone<br/>Calculation rule: (200-age) * 70<br/>Unit: times/minute|
| range4 | int | Anaerobic exercise heart rate zone<br/>Calculation rule: (200-age) ) * 80<br/>Unit: times/minute|
| range5 | int | Extreme exercise heart rate zone<br/>Calculation rule: (200-age) * 90<br/>Unit: times/minute|
| minHr | int | Minimum heart rate<br/>Unit: beats/minute|
| maxHrRemind | int | Maximum heart rate reminder<br/>0 off, 1 on |
| minHrRemind | int | Minimum heart rate reminder<br/>0 off ,1 turn on|
| remindStartHour | int | when the reminder starts |
| remindStartMinute | int | when the reminder starts |
| remindStopHour | int | when the reminder ends |
| remindStopMinute | int | when the reminder ends |
