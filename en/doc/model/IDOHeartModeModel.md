# `IDOHeartModeModel`

| Property | Type | Description |
| ----------- | ------- | ------------ |
| updateTime | Int | The update time as a Unix timestamp in seconds. If equal to 0, it means getting the current UTC timestamp. |
| mode | Int | Mode<br/>0: Off<br/>1: Automatic (5 minutes)<br/>2: Continuous monitoring (5 seconds)<br/>3: Manual mode (disable automatic) <br/>4: Default type, the firmware will automatically set to the default mode after setting<br/>5: Set the corresponding measurement interval<br/>6: Intelligent heart rate mode (ID206)<br/>Note:<br/> 1. If the setSetV3HeartInterval function is configured, mode 0, mode 1, and mode 2 are invalid. <br/>2. When configuring using quick settings, setting setSetV3HeartInterval will activate mode 5<br/>3. When setting continuous heart rate, if the setSetV3HeartInterval function is configured, the corresponding mode is mode 5. <br/> |
| hasTimeRange | Int | Whether there is a time range. 0: No, 1: Yes |
| measurementInterval | Int | Measurement interval (in seconds) |
| getSECMode | Int | The heart rate type currently supported by the watch<br/>All 0 invalid values<br/>Bit0 :5s mode<br/>Note: If setSetV3HeartInterval is not enabled in the firmware, 0 will be returned<br/> |
| getMinMode | Int | The heart rate type currently supported by the watch,<br/>All 0: invalid value<br/>Bit0 : 1 minute<br/>bit1: 3 minutes<br/>bit2: 5 minutes<br/>bit3: 10 minutes<br/>bit4: 30 minutes<br/>bit5: 285 mode,<br/>bit6: 15 Minute Mode<br/>Note: If setSetV3HeartInterval is not enabled in the firmware, 0 is returned |
| startHour | Int | Start time, hours | 
 | startMinute | Int | Start time, minutes | 
 | endHour | Int | End time , hour |
| endMinute | Int | End time, minute |
| notifyFlag | Int | Notification type:<br/>0: Invalid<br/>1: Allow notification<br/>2: Silent notification<br/> 3: Turn off notification<br/>Note: If the firmware does not enable v3HeartSetRateModeCustom, this function is invalid |
| highHeartMode | Int | 1: Turn on smart high heart rate reminder<br/>0: Turn off<br/>Note: If the firmware does not If v3HeartSetRateModeCustom is turned on, this function is invalid |
| lowHeartMode | Int | 1: Turn on intelligent low heart rate reminder<br/>0: Off<br/>Note: If the firmware does not turn on v3HeartSetRateModeCustom, this function is invalid|
| highHeartValue | Int | Intelligent High heart rate reminder threshold<br/>Note: If v3HeartSetRateModeCustom is not enabled in the firmware, this function is invalid |
| lowHeartValue | Int | Smart low heart rate reminder threshold<br/>Note: If v3HeartSetRateModeCustom is not enabled in the firmware, this function is invalid|
 