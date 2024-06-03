# `IDOLongSitParamModel`

| Property | Type | Description |
| ----------- | ------- | ------------ |
| startHour | Int | Sedentary reminder start time (hours) |
| startMinute | Int | Sedentary reminder start time (minutes) |
| endHour | Int | Sedentary reminder end time (hours) |
| endMinute | Int | long Sit reminder end time (minutes) |
| interval | Int | Interval (in minutes)<br/> Value should be greater than 15 minutes |
| repetitions | Int | Repeat with switch<br/>bit0: 0 means off, 1 means open<br/>bit1-7: 0 means no repetition, 1 means repetition|
