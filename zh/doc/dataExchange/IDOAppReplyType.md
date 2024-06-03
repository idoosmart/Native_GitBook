# Ble执行数据交换实体

### IDOExchangeBaseModel

| 参数                                 | 说明     | 类型 | 备注 |
| ------------------------------------ | -------- | ---- | ---- |
| day                                  | 日期     | int  |      |
| hour                                 | 时       | int  |      |
| minute                               | 分       | int  |      |
| second                               | 秒       | int  |      |
| [sportType](../enum/IDOSportType.md) | 运动类型 | int  |      |

### IDOBleStartReplyExchangeModel

| 参数      | 说明                               | 类型                 | 备注 |
| --------- | ---------------------------------- | -------------------- | ---- |
| operate   | 1：请求app打开gps  2：发起运动请求 | int                  |      |
| retCode   | 0: 成功 非0: 失败                  | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型      | IDOExchangeBaseModel |      |

### IDOBleIngReplyExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| distance  | 距离 单位：0.01km             | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOBleEndReplyExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| retCode   | 0: 成功 非0: 失败             | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOBlePauseReplyExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| retCode   | 0: 成功 非0: 失败             | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOBleRestoreReplyExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| retCode   | 0: 成功 非0: 失败             | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOBleOperatePlanReplyExchangeModel

| 参数       | 说明                                                         | 类型                 | 备注 |
| ---------- | ------------------------------------------------------------ | -------------------- | ---- |
| operate    | 1:开始运动，2：暂停运动, 3:恢复运动 ，<br>4：结束运动, 5: 切换动作 | int                  |      |
| planType   | 计划类型 <br>- 1：跑步计划3km，2：跑步计划5km，<br>- 3：跑步计划10km，4：半程马拉松训练 <br>-  5：马拉松训练（二期） | int                  |      |
| actionType | 动作类型 <br> - 1:快走；2:慢跑；3:中速跑；4:快跑 <br> - 5:结束课程运动 （还要等待用户是否有自由运动）<br> - 6:课程结束后自由运动 （此字段当operate为5起作用） | int                  |      |
| errorCode  | 0为成功，非0为失败                                           | int                  |      |
| baseModel  | 基础数据 日期、时间、运动类型                                | IDOExchangeBaseModel |      |

### IDOAppBlePauseReplyExchangeModel

| 参数      | 说明                             | 类型                 | 备注 |
| --------- | -------------------------------- | -------------------- | ---- |
| errCode   | 0: 成功; 1: 没有进入运动模式失败 | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型    | IDOExchangeBaseModel |      |

### IDOAppBleRestoreReplyExchangeModel

| 参数      | 说明                             | 类型                 | 备注 |
| --------- | -------------------------------- | -------------------- | ---- |
| errCode   | 0: 成功; 1: 没有进入运动模式失败 | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型    | IDOExchangeBaseModel |      |

### IDOAppBleEndReplyExchangeModel

| 参数      | 说明                             | 类型                 | 备注 |
| --------- | -------------------------------- | -------------------- | ---- |
| errCode   | 0: 成功; 1: 没有进入运动模式失败 | int                  |      |
| duration  | 持续时长 单位s                   | int                  |      |
| calories  | 卡路里 单位大卡                  | int                  |      |
| distance  | 距离 单位0.01km                  | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型    | IDOExchangeBaseModel |      |