# `IDOHeartRateIntervalModel`

| Properties | Type | Description |
| ----------- | ------- | ----------- |
| burnFatThreshold | int | Fat training heart rate zone<br/>Calculation rule: 50%-69% of maximum heart rate<br/>Unit: times/minute |
| aerobicThreshold | int | Cardiopulmonary training heart rate zone<br/>Calculation rule: 70%-84% of maximum heart rate<br/>Unit: times/minute |
| limitThreshold | int | Peak training heart rate zone<br/>Calculation rule: 85%-100% of maximum heart rate<br/>Unit: times/minute |
| userMaxHr | int | Heart rate upper limit, maximum heart rate reminder<br/>Unit: times/minute |
| range1 | int | Warm-up exercise heart rate zone<br/>Calculation rule: (200-age) * 50<br/>Unit: times/minute |
| range2 | int | Fat burning heart rate zone<br/>Calculation rule: (200-age) * 60<br/>Unit: times/minute |
| range3 | int | Aerobic exercise heart rate zone<br/>Calculation rule: (200-age) * 70<br/>Unit: times/minute |
| range4 | int | Anaerobic exercise heart rate zone<br/>Calculation rule: (200-age) * 80<br/>Unit: times/minute |
| range5 | int | Extreme exercise heart rate zone<br/>Calculation rule: (200-age) * 90<br/>Unit: times/minute |
| minHr | int | Minimum heart rate<br/>Unit: beats/minute |
| maxHrRemind | int | Maximum heart rate reminder<br/>0 off, 1 on |
| minHrRemind | int | Minimum heart rate reminder<br/>0 off, 1 on |
| remindStartHour | int | When the reminder starts |
| remindStartMinute | int | reminder start minutes |
| remindStopHour | int | When the reminder ends |
| remindStopMinute | int | reminder end minutes |
