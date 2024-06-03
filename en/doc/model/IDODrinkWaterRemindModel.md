# `IDODrinkWaterRemindModel`

| Attribute | Type | Description |
| ----------- | ------- | ------------ |
| onOff | int | switch<br/>0 off<br/>1 on|
| startHour | int | start time|
| startMinute | int | start time minutes|
| endHour | int | end time|
| endMinute | int | end time minutes |
| repeats | Set<IDOWeek> | repeat [IDOWeek](../enum/IDOWeek.md) set |
| interval | int | reminder interval<br/>unit minutes |
| notifyFlag | int | notification type<br/>0: invalid<br/>1: allow notification<br/>2: silent notification<br/>3: close notification<br/>Requires firmware to enable menu support `setDrinkWaterAddNotifyFlag` |
| doNotDisturbOnOff | int | Reminder-free switch 00 off 01 on<br/>Need firmware to enable menu support `setNoReminderOnDrinkReminder` |
| noDisturbStartHour | int | Reminder-free start time<br/>Need firmware to enable menu support` setNoReminderOnDrinkReminder` |
| noDisturbStartMinute | int | Reminder-free start time<br/>Needs firmware to enable menu support`setNoReminderOnDrinkReminder` |
| noDisturbEndHour | int | Reminder-free end time<br/>Needs firmware to enable menu support` setNoReminderOnDrinkReminder` |
| noDisturbEndMinute | int | Reminder-free end time<br/>Requires firmware to enable menu support `setNoReminderOnDrinkReminder` |

