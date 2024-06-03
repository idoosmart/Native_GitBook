# V3 data exchange entity 

### IDOExchangeBaseModel

| Parameters| Description| Type| Remarks|
| ------------------------------------ | -------- | ---- | ---- |
| day | date | int | |
| hour | hour | int | |
| minute | minute | int ||
| second | second | int | |
| [sportType](../enum/IDOSportType.md) | sport type | int | |

### IDOExchangeV3Model

| Parameter | Description | Type | Remarks |
| ----------------------- | ----------------------------------------------------------- | -------------------- | ---- |
| year | Training course year | int | |
| month | Training course month | int | |
| planType | Plan type:<br/ > 1: Running plan 3km, <br/>2: Running plan 5km, <br/>3: Running plan 10km, <br/>4: Half marathon training (second phase),<br/>5: Marathon training (Phase 2) | int | |
| actionType | Action type: <br/>1: Walk fast; <br/>2: Jog; <br/>3: Run at medium speed; <br/>4 Run fast; < br/>5: End the course exercise<br/>6: Free exercise after the course | int | |
| version | Protocol version number | int | |
| operate | 1: Request app to open GPS 2: Initiate exercise request| int | |
| targetValue | Target value | int | |
| targetType | Target type:<br>0: No target,<br/>1: Number of repetitions, unit: times,<br/>2: Distance, unit : meters,<br/>3: Calories, unit: kcal, <br/>4: Duration, unit: minutes, <br/>5: Number of steps, unit: steps | int | |
| forceStart | Whether to force Start 0: not mandatory, 1: mandatory | int | |
| retCode | error code | int | |
| step | number of steps | int | |
| durations | duration | int ||
| distance | distance | int | |
| swimPosture | 0: Medley; 1: Freestyle; 2: Breaststroke; 3: Backstroke; 4: Butterfly; | int | |
| status | The status returned by the bracelet starts: 1 , Pause: 2, End: 3, 0: Invalid state | int | |
| signalFlag | Signal strength 0: indicates weak signal, 1: indicates strong signal | int | |
| isSave | Whether to store data | Bool | |
| realTimeSpeed ​​| The app calculates and displays the real-time speed unit km/h 100 times a record in 15 seconds | int | |
| realTimePace | The app calculates and displays the real-time pace unit s | int | |
| interval | Heart rate interval | int | |
| hrCount | Heart rate number | int | |
| burnFatMins | Fat burning time (unit: minutes) | int | |
| aerobicMins | Aerobic time (unit: minutes) | int | |
| limitMins | Limit time (unit: minutes) | int | |
| hrValues ​​| Heart rate data collection | array | |
| warmUpSecond | Warm-up exercise duration (seconds) | int | |
| anaerobicSecond | Anaerobic exercise duration (seconds) | int | |
| fatBurnSecond | Fat burning exercise duration (seconds) | int | |
| aerobicSecond | Aerobic exercise duration (seconds) | int | |
| limitSecond | Limit exercise duration (seconds) | int | |
| avgHr | Avg heart rate | int | |
| maxHr | maximum heart rate | int | |
| curHr | current heart rate | int | |
| warmUpValue | warm-up exercise value | int | |
| fatBurnValue | fat burning exercise value | int | |
| aerobicValue | Aerobic fitness value | int ||
| limitValue | Extreme fitness value | int | |
| anaerobicValue | Anaerobic fitness value | int | |
| avgSpeed ​​| Average speed km/h | int | |
| maxSpeed ​​| Maximum speed km/h | int | |
| avgStepFrequency | Average step frequency | int | |
| maxStepFrequency | Maximum step frequency | int | |
| avgStepStride | Average stride length | int | |
| maxStepStride | Maximum stride | int | |
| kmSpeed ​​| Average kilometer pace | int | |
| fastKmSpeed ​​| Fastest kilometer pace | int | |
| kmSpeedCount | Number of kilometers pace | int | |
| kmSpeeds | kilometer pace collection | array | |
| mileCount | mile pace count | int | |
| mileSpeeds | mile pace collection | array | |
| stepsFrequencyCount | step frequency count | int | |
| stepsFrequencys | Cadence collection | array | |
| trainingEffect | Training effect; Unit: None<br> Range 1.0 ~ 5.0 (*10 times) | int | |
| anaerobicTrainingEffect | Anaerobic training effect; Unit: None<br> Range 1.0 ~ 5.0 (*10 times) | int | |
| vo2Max | Maximum oxygen uptake; <br> Unit: ml/kg/min; <br> Range 0-80 | int | |
| actionDataCount | This action Number of training sessions | int | |
| inClassCalories | Exercise calorie unit in the course in kcal | int | |
| completionRate | Action completion rate 0—100 | int | |
| hrCompletionRate | Heart rate control rate 0—100 | int | |
| recoverTime | Recovery time: unit hours | int | |
| avgWeekActivityTime | Average weekly exercise time last month in minutes | int | |
| grade | VO2 level<br>1: Low 2: Amateur 3: Average 4: Average<br>5: Good 6: Excellent 7: Professional | int | |
| actionData | Action completion content<br>type: Action type 1 fast walking; 2 jogging; 3 medium speed running; 4 fast running <br>heart_con_value: heart rate control for each action<br>time: action completion time unit seconds<br>goal_time: action target time | int | |
| trainingOffset | training course date offset starts from 0 | int | |
| countHour | Exercise countdown | int | |
| countMinute | Exercise countdown minutes | int | |
| countSecond | Exercise countdown seconds | int | |
| time | Action target time unit seconds | int | |
| lowHeart | Heart rate range low value | int | |
| heightHeart | The high value of the heart rate range | int | |
| paceSpeedCount | The number of real-time paces | int | |
| paceSpeeds | The real-time pace array passes s and counts every 5 seconds | array | |
| realSpeedCount | real-time Number of speeds | int | |
| realSpeeds | The real-time speed array passed is s and calculated every 5 seconds | array | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |