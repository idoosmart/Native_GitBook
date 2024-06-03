# `IDOHeartModeParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| updateTime | Int | 更新时间为 Unix 时间戳（以秒为单位）。如果等于0，表示获取当前UTC时间戳。 |
| mode | Int | 模式<br/>0：关闭<br/>1：自动（5 分钟）<br/>2：连续监控（5 秒）<br/>3：手动模式（禁用自动）<br/>4：默认类型，设置后固件自动设置为默认模式<br/>5：设置相应的测量间隔<br/>6：智能心率模式（ID206）<br/>注意：<br/>1.如果配置了setSetV3HeartInterval函数，则模式0、模式1、模式2无效。<br/>2．使用快速设置进行配置时，设置 setSetV3HeartInterval 将激活模式 5<br/>3。设置连续心率时，如果配置了setSetV3HeartInterval函数，则对应的模式为模式5。<br/> |
| hasTimeRange | Int | 是否有时间范围。 0：否，1：是 |
| measurementInterval | Int | 测量间隔（以秒为单位） |
| startHour | Int | 开始时间，时 |
| startMinute | Int | 开始时间，分 |
| endHour | Int | 结束时间，时 |
| endMinute | Int | 结束时间，分 |
| notifyFlag | Int | 通知类型：<br/>0：无效<br/>1：允许通知<br/>2：静默通知<br/>3：关闭通知<br/>注意：如果固件未启用v3HeartSetRateModeCustom，则此功能无效 |
| highHeartMode | Int | 1：开启智能高心率提醒<br/>0：关闭<br/>注：如果固件没有开启v3HeartSetRateModeCustom则此功能无效 |
| lowHeartMode | Int | 1：开启智能低心率提醒<br/>0：关闭<br/>注：如果固件没有开启v3HeartSetRateModeCustom则此功能无效 |
| highHeartValue | Int | 智能高心率提醒阈值<br/>注意：如果固件没有启用v3HeartSetRateModeCustom，则此功能无效 |
| lowHeartValue | Int | 智能低心率提醒阈值<br/>注意：如果固件没有启用v3HeartSetRateModeCustom，则此功能无效 |
