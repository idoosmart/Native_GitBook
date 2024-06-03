# Multiple motion summary data entities

### IDOExchangeBaseModel

| Parameters| Description| Type|
| --------------------------------------- | -------- | ---- |
| day | date | int |
| hour | hour | int |
| minute | minute | int |
| second | second | int |
| [sportType](../enum/IDOSportType.md) | sport type | int |

### IDOAppActivityDataV3ExchangeModel

| Parameters | Description|Type|
| -------------------------- | ------------------------------------------------------------------ | -------------------- |
| year | year | int |
| month | month | int |
| version | protocol version number | int |
| hrInterval | Heart rate interval unit minutes | int |
| step | number of steps | int |
| durations | duration | int |
| calories | calories | int |
| distance | Heart rate duration of fat burning in minutes | int |
| aerobicMins | Duration of aerobic exercise in minutes | int |
| limitMins | Duration of extreme exercise in minutes | int |
| warmUp | warm-up | int |
| fatBurning | fat burning | int |
| aerobicExercise | aerobic training | int |
| anaerobicExercise | anaerobic training | int |
| extremeExercise | The cumulative duration of exercise in seconds | int |
| fatBurningTime | The cumulative duration of fat burning in seconds | int |
| aerobicExerciseTime | The cumulative duration of aerobic exercise in seconds | int |
| anaerobicExerciseTime | The cumulative duration of anaerobic exercise Duration in seconds | int |
| extremeExerciseTime | The cumulative duration of extreme exercise in seconds | int |
| avgSpeed ​​| The average speed in km/h | int |
| maxSpeed ​​| The fastest speed in km/h | int |
| avgStepStride | The average stride | int |
| maxStepStride | Maximum stride | int |
| kmSpeed ​​| Average kilometer pace | int |
| fastKmSpeed ​​| Fastest kilometer pace | int |
| maxStepFrequency | Maximum step frequency | int |
| avgHrValue | Average heart rate | int |
| maxHrValue | Maximum heart rate | int |
| recoverTime | Recovery time in hours After the app receives the data, <br> It needs to decrease by 1 every hour | int |
| vo2max | Maximum oxygen uptake unit ml/kg/min | int |
| trainingEffect | Training effect range: 1.0 - 5.0 (expand transmission 10 times) | int |
| grade | VO2 level 1: Low 2: Amateur 3: <br>Average 4: Average 5: Good 6: Excellent 7: Professional | int |
| stepsFrequencyCount | Number of cadence details | int |
| miSpeedCount | The maximum number of mile pace is 100 | int |
| realSpeedCount | The number of real-time speed | int |
| paceSpeedCount | The number of real-time pace | int |
| kmSpeedCount | Kilometer pace details The maximum number is 100 | int |
| actionDataCount | The number of this action training | int |
| kmSpeeds | Speed ​​collection of seconds per kilometer | array |
| stepsFrequency | Cadence collection unit steps/minute| array |
| itemsMiSpeed ​​| mile pace array | array |
| itemRealSpeed ​​| real-time speed array unit km/h | array |
| paceSpeedItems | real-time pace array | array |
| actionData | Action completion content<br/> type: action type 1 fast walking; 2 jogging; 3 medium speed running; 4 fast running<br/> heart_con_value: heart rate control for each action<br> time: action completion time unit seconds< br/> goal_time: Action goal time | array |
| baseModel | Basic data date, time, sports type | IDOExchangeBaseModel |