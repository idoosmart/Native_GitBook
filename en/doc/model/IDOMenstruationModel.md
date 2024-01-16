# `IDOMenstruationModel`

| Properties | Type | Description |
| ------------------------- | -------- | -------------- -------------------------------------------------- |
| onOff | int | Menstrual period switch 1 on 0 off |
| menstrualLength | int | Menstrual length |
| menstrualCycle | int | menstrual cycle |
| lastMenstrualYear | int | Last menstrual period start time year |
| lastMenstrualMonth | int | Last menstrual period start time month |
| lastMenstrualDay | int | Last menstrual period start time day |
| ovulationIntervalDay | int | The interval from the beginning of the next menstrual period to the day of ovulation, usually 14 days |
| ovulationBeforeDay | int | The number of fertile days before ovulation day, usually 5 |
| ovulationAfterDay | int | The number of fertile days after ovulation day, usually 5 |
| notifyFlag | int | Notification type <br/>0: Invalid <br/>1: Allow notification <br/>2: Silent notification <br/>3: Close notification Firmware is required to enable menu support getMenstrualAddNotifyFlagV3 |
| menstrualReminderOnOff | int | Menstrual reminder switch <br/>1: on <br/>0: off <br/>Firmware is required to enable menu support getSupportSetMenstrualReminderOnOff. When the switch is invalid, the default reminder is when the function is enabled. |