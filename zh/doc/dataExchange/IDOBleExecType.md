# App监听Ble数据实体

### IDOExchangeBaseModel

| 参数                                 | 说明     | 类型 | 备注 |
| ------------------------------------ | -------- | ---- | ---- |
| day                                  | 日期     | int  |      |
| hour                                 | 时       | int  |      |
| minute                               | 分       | int  |      |
| second                               | 秒       | int  |      |
| [sportType](../enum/IDOSportType.md) | 运动类型 | int  |      |

### IDOBleStartExchangeModel

| 参数      | 说明                              | 类型                 | 备注 |
| --------- | --------------------------------- | -------------------- | ---- |
| operate   | 1：请求app打开gps 2：发起运动请求 | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型     | IDOExchangeBaseModel |      |

### IDOBleIngExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| distance  | 距离 单位：0.01km             | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOBleEndExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOBlePauseExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOBleRestoreExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOAppBlePauseExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOAppBleRestoreExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOAppBleEndExchangeModel

| 参数        | 说明                          | 类型                 | 备注 |
| ----------- | ----------------------------- | -------------------- | ---- |
| duration    | 持续时长 单位s                | int                  |      |
| calories    | 卡路里 单位大卡               | int                  |      |
| distance    | 距离 单位0.01km               | int                  |      |
| avgHr       | 平均心率                      | int                  |      |
| maxHr       | 最大心率                      | int                  |      |
| burnFatMins | 脂肪燃烧时长 单位分钟         | int                  |      |
| aerobicMins | 心肺锻炼时长 单位分钟         | int                  |      |
| limitMins   | 极限锻炼时长 单位分钟         | int                  |      |
| isSave      | 0:不保存，1:保存              | int                  |      |
| baseModel   | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |