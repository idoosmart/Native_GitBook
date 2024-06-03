# `IDOFitnessGuidanceParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| mode | Int | 健身指导模式开关<br/>1：开<br/>0：关 |
| startHour | Int | 开始时间 |
| startMinute | Int | 开始分钟 |
| endHour | Int | 结束时间 |
| endMinute | Int | 结束分钟 |
| notifyFlag | Int | 通知类型<br/>0：无效<br/>1：允许<br/>2：静默<br/>3：禁用 |
| goMode | Int | 移动开关提醒<br/>1：开<br/>0：关 |
| repeats | Set<IDOWeek> | 重复[IDOWeek](../enum/IDOWeek.md) 集合 |
| isOpen | Bool | 总开关 |
| targetSteps | Int | 目标步数 |

