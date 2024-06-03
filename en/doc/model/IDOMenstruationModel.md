# `IDOMenstrationModel`

| Attributes | Type | Description |
| ----------------------- | -------- | ------------------------------------------------------------ |
| onOff | int | Menstrual switch 1 on 0 off |
| menstrualLength | int | menstrual length |
| menstrualCycle | int | menstrual cycle |
| lastMenstrualYear | int | most recent Menstrual period start time in year | 
 | lastMenstrualMonth | int | Last menstrual period start time in month | 
| lastMenstrualDay | int | Last menstrual period start time in day | 
| ovulationIntervalDay | int | The interval from before the next menstrual period to the ovulation day, generally is 14 days |
| ovulationBeforeDay | int | The number of fertile days before ovulation day, usually 5 |
| ovulationAfterDay | int | The number of fertile days after ovulation day, usually 5 |
| notifyFlag | int | Notification type<br />0: Invalid<br/>1: Allow notifications<br/>2: Silent notifications<br/>3: Turning off notifications requires firmware to enable menu support getMenstrualAddNotifyFlagV3 |
| menstrualReminderOnOff | int | Menstrual reminder switch<br/ >1: On<br/>0: Off<br/>The firmware is required to enable the menu to support getSupportSetMenstrualReminderOnOff. When this switch is invalid, the default reminder is when the function is enabled. |

