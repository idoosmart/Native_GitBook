#App monitors Ble data entities

### IDOExchangeBaseModel

| Parameters| Description| Type| Remarks|
| ---------------------------------- | -------- | ---- | ---- |
| day | date | int | |
| hour | hour | int | |
 | minute | minute | int | |
| second | second | int | |
| [sportType](../enum/IDOSportType.md) | sport type | int | |

### IDOBleStartExchangeModel

| Parameters | Description | Type | Remarks | 
 | --------- | --------------------------------- | -------------------- | ---- |
| operate | 1: Request app to open GPS 2: Initiate exercise request | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOBleIngExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | ---------------------------------- | -------------------- | ---- |
| distance | Distance unit: 0.01km | int | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOBleEndExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | -------------------------- | --------------------- | ---- |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOBlePauseExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | -------------------------- | -------------------- | ---- |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOBleRestoreExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | -------------------------- | -------------------- | ---- |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppBlePauseExchangeModel

| Parameters | Description | Type | Remarks |
| --------- | -------------------------- | -------------------- | ---- |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppBleRestoreExchangeModel

| Parameters | Description | Type | Remarks |
| ---------- | -------------------------- | -------------------- | ---- |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |

### IDOAppBleEndExchangeModel

| Parameters | Description | Type | Remarks |
 | ----------- | -------------------------- | -------------------- | ---- |
| duration | duration unit s | int | |
| calories | calorie unit kcal | int | |
| distance | distance unit 0.01 km | int | |
| avgHr | average heart rate | int | |
| maxHr | maximum heart rate | int | |
| burnFatMins | fat burning duration in minutes | int | |
| aerobicMins | cardiopulmonary exercise duration in minutes | int | |
| limitMins | Extreme exercise duration in minutes | int | |
| isSave | 0: Do not save, 1: Save | int | |
| baseModel | Basic data date, time, exercise type | IDOExchangeBaseModel | |