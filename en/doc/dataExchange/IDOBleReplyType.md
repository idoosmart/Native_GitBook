#App executes Ble response entity

### IDOExchangeBaseModel

| Parameters| Description| Type| Remarks|
| --------------------------------------- | -------- | ---- | ---- |
| day | date | int | |
| hour | hour | int | |
 | minute | minute | int | |
| second | second | int | |
| [sportType](../enum/IDOSportType.md) | sport type | int | |

### IDOAppStartReplyExchangeModel

| Parameters | Description | Type | Remarks | 
 | --------- | ------------------------------------------------------------ | ---------------------------- | ---- |
| retCode | Response status<br>- 0: Success; 1: The device has entered sports mode and failed; <br>- 2: The device has low power and failed; 3: The bracelet is charging<br>- 4 : Using Alexa 5: Calling | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppEndReplyExchangeModel

| Parameters | Description | Type | Remarks |
| ----------- | -------------------------- | -------------------- | ---- |
| errorCode | 0: success; 1: device end failure | int | |
| calories | calories, unit kcal | int | |
| distance | distance | distance (unit: meters) | int | |
| step | number of steps (unit: step) | int | |
| avgHr | average heart rate | int | |
| maxHr | maximum heart rate | int | |
| burnFatMins | fat burning Duration in minutes | int | |
| aerobicMins | Cardiopulmonary exercise duration in minutes | int | |
| limitMins | Extreme exercise duration in minutes | int | |
| baseModel | Basic data date, time, exercise type | IDOExchangeBaseModel | |
 
### IDOAppIngReplyExchangeModel

| Parameters| Description| Type| Remarks|
| ---------- | ----------------------------------------- | -------------------- | ---- |
| calories | calories, Unit kcal | int | |
| distance | distance (unit: meters) | int | |
| status | 0: all valid, 1: distance invalid, 2: GPS signal is weak | int | |
| step | number of steps (unit: step) | int | |
| currentHr | current heart rate | int | |
| interval | heart rate interval unit s | int | |
| hrSerial | serial number | int | |
| hrJson | heart rate value data | List <Int> | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppPauseReplyExchangeModel

| Parameters | Description | Type | Remarks |
| ---------- | -------------------------- | -------------------- | ---- |
| errCode | Pause error code 0: success, non-0: failure | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppRestoreReplyExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | ----------------------------- | -------------------- | ---- | 
| errCode | Pause error code 0: success, not 0: failure | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppIngV3ReplyExchangeModel

| Parameters | Description | Type | Remarks |
| ----------------------- | --------------------------------------------------------------- | --------------------- | ------------------------------------------------------------ |
| version | Pause error code 0: success, not 0: failure | int | |
| heartRate | heart rate data | int | |
| distance | distance | int | unit displayed according to unit setting |
| duration | duration in seconds | int | |
| realTimeCalories | dynamic calories | int | |
| realTimeSpeed ​​| real-time speed, unit km/h, expanded by 100 times | int | |
| kmSpeed ​​| real-time kilometer pace unit s/km | int | |
| steps | number of steps | int | |
| swimPosture | main swimming posture | int | |
| status | status | int | -0: Invalid 1: Start 2: Manual pause 3: <br> End 4: Automatically pause for 5 seconds using sliding average <br> Use 1-5 seconds of data for the 5th second, use 2-6 seconds of data for the 6th second |
 | realTimeSpeedPace | real-time pace, unit seconds | int | |
| trainingEffect | aerobic training effect level | int | range 0-50 10x transmission expansion |
| anaerobicTrainingEffect | anaerobic training effect level | int | range 0 -50 Expand transmission 10 times|
| actionType | Action type<br>1 Brisk walking<br>2 Jogging<br/>3 Medium speed running<br/>4 Fast running<br/>5 End of course exercise<br/>6 Free exercise after the end of the course<br/ // int | When,<br>This field is the exercise countdown time<br>(Note: time decreases)<br>action_type = 6,<br>This field is the time after the course ends<br>(Note: Time increases) |
| countMinute | Movement accumulated time minutes | int | Same as above |
| countSecond | Movement accumulated time in seconds | int | Same as above |
| baseModel | Basic data date, time, movement type | IDOExchangeBaseModel | |

### IDOAppOperatePlanReplyExchangeModel

| Parameters | Description | Type | Remarks |
| ---------- | ----------------------------------------------------------------- | ------------------- | ---- |
| planType | Plan type<br>1: Running plan 3km, 2: Running plan 5km,<br>3: Running plan 10km, 4: Half marathon training,<br>5: Marathon Training (Phase 2) | int | |
| operate | 1: Start exercise<br>2: Pause exercise<br/>3: Resume exercise<br/>4: End exercise,<br/>5: Switch action| int | |
| actionType | Action type: <br>1 brisk walking<br/>2 jogging<br/>3 medium speed running<br/>4 fast running<br/>5 end of course exercise<br/>6 course Free movement after the end<br/> | int | |
| errorCode | 0 is success, non-0 is failure| | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |