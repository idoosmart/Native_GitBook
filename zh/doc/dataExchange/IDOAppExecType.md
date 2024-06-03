# APP执行数据交换实体

### IDOExchangeBaseModel

| 参数                                 | 说明     | 类型 | 备注 |
| ------------------------------------ | -------- | ---- | ---- |
| day                                  | 日期     | int  |      |
| hour                                 | 时       | int  |      |
| minute                               | 分       | int  |      |
| second                               | 秒       | int  |      |
| [sportType](../enum/IDOSportType.md) | 运动类型 | int  |      |

### IDOAppStartExchangeModel

| 参数                | 说明                              | 类型                 | 备注 |
| ------------------- | --------------------------------- | -------------------- | ---- |
| targetType          | 目标类型                          | int                  |      |
| targetValue         | 目标值                            | int                  |      |
| forceStart          | 是否强制开始 0:不强制,1:强制      | int                  |      |
| vo2max              | 最大摄氧量 单位 ml/kg/min         | int                  |      |
| recoverTime         | 恢复时长：单位小时                | int                  |      |
| avgWeekActivityTime | 上个月平均每周的运动时间 单位分钟 | int                  |      |
| baseModel           | 基础数据 日期、时间、运动类型     | IDOExchangeBaseModel |      |

### IDOAppEndExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| duration  | 持续时长（单位：s）           | int                  |      |
| calories  | 卡路里，单位大卡              | int                  |      |
| distance  | 距离（单位：米）              | int                  |      |
| isSave    | 0:不保存，1:保存              | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOAppIngExchangeModel

| 参数      | 说明                                    | 类型                 | 备注 |
| --------- | --------------------------------------- | -------------------- | ---- |
| duration  | 持续时长（单位：s）                     | int                  |      |
| calories  | 卡路里，单位大卡                        | int                  |      |
| distance  | 距离（单位：米）                        | int                  |      |
| status    | 0: 全部有效、1: 距离无效、 2: GPS信号弱 | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型           | IDOExchangeBaseModel |      |

### IDOAppPauseExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOAppRestoreExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOAppIngV3ExchangeModel

| 参数      | 说明                                 | 类型                 | 备注  |
| --------- | ------------------------------------ | -------------------- | ----- |
| version   | 协议版本号                           | int                  | 默认0 |
| signal    | 0: 表示信号弱 2: 表示信号强          | int                  |       |
| distance  | 距离（单位：米）                     | int                  |       |
| speed     | app计算显示实时配速，单位km/h，100倍 | int                  |       |
| duration  | 持续时间                             | int                  |       |
| calories  | 卡路里                               | int                  |       |
| baseModel | 基础数据 日期、时间、运动类型        | IDOExchangeBaseModel |       |

### IDOAppOperatePlanExchangeModel

| 参数           | 说明                                                         | 类型                 | 备注 |
| -------------- | ------------------------------------------------------------ | -------------------- | ---- |
| operate        | 1:开始运动，2：暂停运动,<br> 3:恢复运动 ，4：结束运动, 5: 切换动作 | int                  |      |
| trainingOffset | 训练的课程日期偏移 从0开始                                   | int                  |      |
| planType       | 计划类型 : <br>1：跑步计划3km，2：跑步计划5km，<br>3：跑步计划10km，4：半程马拉松训练<br>5：马拉松训练（二期） | int                  |      |
| baseModel      | 基础数据 日期、时间、运动类型                                | IDOExchangeBaseModel |      |