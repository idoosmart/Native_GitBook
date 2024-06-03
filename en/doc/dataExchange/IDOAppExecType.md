# APP execution data exchange entity 

### IDOExchangeBaseModel

| Parameters | Description | Type | Remarks | 
| --------------------------------------- | -------- | ---- | ---- |
| day | date | int | |
| hour | hour | int | |
 | minute | minute | int | |
| second | second | int | |
| [sportType](../enum/IDOSportType.md) | sport type | int | |

### IDOAppStartExchangeModel

| Parameters | Description|Type|Remarks|
| ------------------- | ---------------------------------- | -------------------- | ---- |
| targetType | target type| int | |
| targetValue | target value | int | |
| forceStart | whether to force start 0: not forced, 1: forced | int | |
| vo2max | maximum oxygen uptake unit ml/kg/min | int | |
| recoverTime | recovery Duration: unit hour | int | |
| avgWeekActivityTime | average weekly exercise time last month in minutes | int | |
| baseModel | basic data date, time, exercise type | IDOExchangeBaseModel | |

### IDOAppEndExchangeModel

| Parameters| Description| Type| Remarks|
| ---------- | ----------------------------- | -------------------- | ---- |
| duration | duration (unit: s) | int | |
| calories | calories, unit kcal | int | |
| distance | distance (unit: meters) | int | |
| isSave | 0: do not save, 1: save | int | |
| baseModel | basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppIngExchangeModel

| Parameters| Description| Type| Remarks|
| ---------- | --------------------------------------- | -------------------- | ---- |
| duration | duration (unit: s) | int | |
| calories | calories, unit kcal | int | |
| distance | distance (unit: meters) | int | |
| status | 0: All valid, 1: Invalid distance, 2: GPS signal is weak | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppPauseExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | -------------------------- | -------------------- | ---- |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppRestoreExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | -------------------------- | -------------------- | ---- |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppIngV3ExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | ------------------------------------ | -------------------- | ----- |
| version | protocol version number | int | default 0 |
| signal | 0: indicates weak signal 2: indicates strong signal | int | |
| distance | distance (unit: meters) | int | |
| speed | app calculation Display real-time pace, unit km/h, 100 times | int | |
| duration | duration | int | |
| calories | calories | int | |
| baseModel | basic data date, time, exercise type | IDOExchangeBaseModel | |

### IDOAppOperatePlanExchangeModel

| Parameters| Description| Type| Remarks|
| -------------- | ------------------------------------------------------- | -------------------- | ---- |
| operate | 1: Start exercise, 2: Pause exercise,<br> 3: Resume exercise, 4: End exercise, 5 : Switch action | int | |
| trainingOffset | Training course date offset starts from 0 | int | |
| planType | Plan type: <br>1: Running plan 3km, 2: Running plan 5km, <br>3 : Running plan 10km, 4: Half marathon training<br>5: Marathon training (second phase) | int | |
| baseModel | Basic data date, time, exercise type | IDOExchangeBaseModel | |