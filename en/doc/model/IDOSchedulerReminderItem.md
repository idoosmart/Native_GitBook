# `IDOSchedulerReminderItem`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| id | Int | Reminder event ID. Incremental value sent by the application, starting from 0 | 
 | repeatType | Int | repeat time , bit 0 as a general switch)<br/>Set the repeat type (0: invalid, 1: once, 2: daily, 3: weekly, 4: monthly, 5: yearly) (if passed<br/>`getSupportSetRepeatTypeOnScheduleReminderV3 `Enable) |
| remindOnOff | Int | Daily reminder switch<br/>0: Off, 1: On |
| state | Int | Status code<br/>0: Invalid, 1: Deleted, 2: Enabled |
| title | String | Title content. Maximum 74 bytes |
| note | String | Reminder content. Maximum 149 bytes |
