# `IDOSchedulerReminderItem`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| id | Int | 提醒事件 ID。应用程序发送的增量值，从0开始 |
| repeatType | Int | 重复时间<br/>如果使用<br/>`getSupportSetRepeatWeekTypeOnScheduleReminderV3`启用，则设置基于周的重复的bit1-bit7（周一到周日，位0作为通用开关）<br/>设置重复类型（0：无效， 1：一次、2：每天、3：每周、4：每月、5：每年）（如果通过<br/>`getSupportSetRepeatTypeOnScheduleReminderV3`启用） |
| remindOnOff | Int | 每日提醒开关<br/>0：关，1：开 |
| state | Int | 状态码<br/>0：无效，1：已删除，2：启用 |
| title | String | 标题内容。最大 74 字节 |
| note | String | 提醒内容。最大 149 字节 |
