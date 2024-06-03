# `IDOLongSitParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| startHour | Int | 久坐提醒开始时间（小时） |
| startMinute | Int | 久坐提醒开始时间（分钟） |
| endHour | Int | 久坐提醒结束时间（小时） |
| endMinute | Int | 久坐提醒结束时间（分钟） |
| interval | Int | 间隔（以分钟为单位）<br/>值应大于 15 分钟 |
| repetitions | Int | 重复与开关<br/>bit0：0表示关闭，1表示打开<br/>bit1-7：0表示不重复，1表示重复 |
