# Multi-sport heart rate data entity

### IDOExchangeBaseModel

| Parameters| Description| Type| Remarks|
| --------------------------------------- | -------- | ---- | ---- |
| day | date | int | |
| hour | hour | int | |
 | minute | minute | int | |
| second | second | int | |
| [sportType](../enum/IDOSportType.md) | sport type | int | |

### IDOAppHrDataExchangeModel

| Parameters | Description|Type|Remarks|
| ------------------- | ----------------------------------------- | -------------------- | ---- |
| version | Protocol version number | int | |
| heartRateHistoryLen | The maximum length of the heart rate data array is 60 | int | |
| interval | Heart rate interval unit seconds | int | |
| heartRates | The heart rate data array stores one minute of heart rate data, one per second | array | |
| baseModel | Basic data date, time, motion type | IDOExchangeBaseModel | |