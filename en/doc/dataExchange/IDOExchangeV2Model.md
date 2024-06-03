# V2 data exchange entity 

### IDOExchangeBaseModel

| Parameters| Description| Type| Remarks|
| ------------------------------------ | -------- | ---- | ---- |
| day | date | int | |
| hour | hour | int | |
| minute | minute | int ||
| second | second | int | |
| [sportType](../enum/IDOSportType.md) | sport type | int | |

### IDOExchangeV2Model

| Parameter | Description | Type | Remarks |
| ----------- | --------------------------------------------------------- | -------------------- | ---- |
| operate | 1: Request the app to open GPS <br>2: Initiate a motion request | int | |
| targetValue | target value | int | |
| targetType | motion target type<br/>0 : No goal,<br/>1: Number of repetitions, unit: times,<br/>2: Distance, unit: meters, <br/>3: Calories, unit: kcal, <br/>4: Duration, Unit: minutes, <br/>5: Number of steps, unit: step | int | |
| forceStart | Whether to force start 0: Not forced, 1: Forced | | |
| retCode | Error code<br>0: Success ; <br/>1: The device has entered sports mode and failed;<br/>2: The device has low power and failed; <br/>3: The bracelet is charging<br/>4: Alexa is being used <br/>5: During the call | int | |
| calories | calories (unit: J) | int | |
| distance | distance (unit: meters) | int | |
| durations | duration (unit: seconds) | int | | 
| step | number of steps (unit: step) | int | |
| avgHr | average heart rate | int | |
| maxHr | maximum heart rate | int | |
| curHr | current heart rate | int | |
| hrSerial | sequence No. | int | |
| burnFatMins | fat burning time (unit: minutes) | int | |
| aerobicMins | aerobic time (unit: minutes) | int | |
| limitMins | limit time (unit: minutes) | int | |
| isSave | Whether to store data | bool | |
| status | 0: All valid, <br>1: Invalid distance, <br> 2: GPS signal is weak | int | |
| interval | Heart rate interval | int | |
| hrValues ​​| Heart rate data collection | array | |
| baseModel | Basic data date, time, exercise type | IDOExchangeBaseModel | |

