# Ble execution data exchange entity 

### IDOExchangeBaseModel

| Parameters | Description | Type | Remarks | 
| --------------------------------------- | -------- | ---- | ---- |
| day | date | int | |
| hour | hour | int | |
 | minute | minute | int | |
| second | second | int | |
| [sportType](../enum/IDOSportType.md) | sport type | int | |

### IDOBleStartReplyExchangeModel

| Parameters | Description | Type | Remarks | 
 | --------- | ---------------------------------- | -------------------- | ---- |
| operate | 1: Request app to open GPS 2: Initiate exercise request | int | |
| retCode | 0: Success, not 0: Failure | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOBleIngReplyExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | -------------------------- | -------------------- | ---- |
| distance | Distance unit: 0.01km | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOBleEndReplyExchangeModel

| Parameters| Description| Type| Remarks|
| ---------- | ----------------------------- | -------------------- | ---- |
| retCode | 0: success, non-0: failure | int | |
| baseModel | basic data date , time, motion type | IDOExchangeBaseModel | |

### IDOBlePauseReplyExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | ------------------------------ | -------------------- | ---- |
| retCode | 0: Success is not 0: Failure | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOBleRestoreReplyExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | -------------------------------- | -------------------- | ---- |
| retCode | 0: Success, non-0: Failure | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOBleOperatePlanReplyExchangeModel
| Parameters | Description | Type | Remarks | 
 | ---------- | ------------------------------------------------------------ | -------------------- | ---- |
| operate | 1: Start exercise, 2: Pause exercise, 3: Resume exercise,<br>4: End exercise, 5: Switch action| int | |
| planType | Plan type< br>- 1: Running plan 3km, 2: Running plan 5km,<br>- 3: Running plan 10km, 4: Half marathon training<br>- 5: Marathon training (second phase) | int | |
| actionType | Action type<br> - 1: Brisk walking; 2: Jogging; 3: Medium speed running; 4: Fast running<br> - 5: End the course exercise (but also wait for the user to have free movement)<br> - 6: Free movement after the course (this field works when operate is 5) | int | |
| errorCode | 0 is success, non-0 is failure | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppBlePauseReplyExchangeModel

| Parameters | Description | Type | Remarks | 
 | --------- | ----------------------------- | -------------------- | ---- |
| errCode | 0: Success; 1: Failure without entering sports mode | int | |
 | baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppBleRestoreReplyExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | ----------------------------------- | -------------------- | ---- |
| errCode | 0: Success; 1: Failure without entering motion mode | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppBleEndReplyExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | -------------------------------- | -------------------- | ---- |
| errCode | 0: Success; 1: Failure without entering sports mode | int | |
| duration | Continuous Duration unit s | int | |
| calories | Calorie unit kcal | int | |
| distance | Distance unit 0.01km | int | |
| baseModel | Basic data date, time, exercise type | IDOExchangeBaseModel | |