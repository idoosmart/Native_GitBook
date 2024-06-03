# `IDOMenstruationModel`

| 属性        | 类型    | 说明         |
| ------------------------- | -------- | ------------------------------------------------------------ |
| onOff                    | int      | 经期开关 1开 0关闭                                           |
| menstrualLength          | int      | 经期长度                                                     |
| menstrualCycle           | int      | 经期周期                                                     |
| lastMenstrualYear       | int      | 最近一次经期开始时间 年                                      |
| lastMenstrualMonth      | int      | 最近一次经期开始时间 月                                      |
| lastMenstrualDay     | int      | 最近一次经期开始时间 日                                      |
| ovulationIntervalDay    | int      | 从下一个经期开始前到排卵日的间隔,一般为14天                  |
| ovulationBeforeDay    | int      | 排卵日之前易孕期的天数,一般为5                               |
| ovulationAfterDay       | int      | 排卵日之后易孕期的天数,一般为5                               |
| notifyFlag               | int      | 通知类型 <br/>0：无效 <br/>1：允许通知 <br/>2：静默通知 <br/>3：关闭通知 需要固件开启功能表支持 getMenstrualAddNotifyFlagV3 |
| menstrualReminderOnOff | int      | 经期提醒开关开关 <br/>1:开 <br/>0:关闭 <br/>需要固件开启功能表支持 getSupportSetMenstrualReminderOnOff 该开关无效时，功能开启就默认提醒。 |

