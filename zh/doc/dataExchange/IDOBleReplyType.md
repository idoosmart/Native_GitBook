# App执行Ble响应实体

### IDOExchangeBaseModel

| 参数                                 | 说明     | 类型 | 备注 |
| ------------------------------------ | -------- | ---- | ---- |
| day                                  | 日期     | int  |      |
| hour                                 | 时       | int  |      |
| minute                               | 分       | int  |      |
| second                               | 秒       | int  |      |
| [sportType](../enum/IDOSportType.md) | 运动类型 | int  |      |

### IDOAppStartReplyExchangeModel

| 参数      | 说明                                                         | 类型                 | 备注 |
| --------- | ------------------------------------------------------------ | -------------------- | ---- |
| retCode   | 响应状态<br>- 0:成功; 1:设备已经进入运动模式失败; <br>- 2:设备电量低失败;3:手环正在充电 <br>- 4:正在使用Alexa 5:通话中 | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型                                | IDOExchangeBaseModel |      |

### IDOAppEndReplyExchangeModel

| 参数        | 说明                          | 类型                 | 备注 |
| ----------- | ----------------------------- | -------------------- | ---- |
| errorCode   | 0:成功; 1:设备结束失败        | int                  |      |
| calories    | 卡路里，单位大卡              | int                  |      |
| distance    | 距离（单位：米）              | int                  |      |
| step        | 步数 (单位:步)                | int                  |      |
| avgHr       | 平均心率                      | int                  |      |
| maxHr       | 最大心率                      | int                  |      |
| burnFatMins | 脂肪燃烧时长 单位分钟         | int                  |      |
| aerobicMins | 心肺锻炼时长 单位分钟         | int                  |      |
| limitMins   | 极限锻炼时长 单位分钟         | int                  |      |
| baseModel   | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOAppIngReplyExchangeModel

| 参数      | 说明                                    | 类型                 | 备注 |
| --------- | --------------------------------------- | -------------------- | ---- |
| calories  | 卡路里，单位大卡                        | int                  |      |
| distance  | 距离（单位：米）                        | int                  |      |
| status    | 0: 全部有效、1: 距离无效、 2: GPS信号弱 | int                  |      |
| step      | 步数 (单位:步)                          | int                  |      |
| currentHr | 当前心率                                | int                  |      |
| interval  | 心率间隔 单位s                          | int                  |      |
| hrSerial  | 序列号                                  | int                  |      |
| hrJson    | 心率值数据                              | List<Int>            |      |
| baseModel | 基础数据 日期、时间、运动类型           | IDOExchangeBaseModel |      |

### IDOAppPauseReplyExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| errCode   | 暂停错误码 0:成功 非0:失败    | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOAppRestoreReplyExchangeModel

| 参数      | 说明                          | 类型                 | 备注 |
| --------- | ----------------------------- | -------------------- | ---- |
| errCode   | 暂停错误码 0:成功 非0:失败    | int                  |      |
| baseModel | 基础数据 日期、时间、运动类型 | IDOExchangeBaseModel |      |

### IDOAppIngV3ReplyExchangeModel

| 参数                    | 说明                                                         | 类型                 | 备注                                                         |
| ----------------------- | ------------------------------------------------------------ | -------------------- | ------------------------------------------------------------ |
| version                 | 暂停错误码 0:成功 非0:失败                                   | int                  |                                                              |
| heartRate               | 心率数据                                                     | int                  |                                                              |
| distance                | 距离                                                         | int                  | 单位根据单位设置的单位显示                                   |
| duration                | 持续时间 秒钟                                                | int                  |                                                              |
| realTimeCalories        | 动态卡路里                                                   | int                  |                                                              |
| realTimeSpeed           | 实时速度，单位km/h，扩大100倍                                | int                  |                                                              |
| kmSpeed                 | 实时公里配速 单位s/公里                                      | int                  |                                                              |
| steps                   | 步数                                                         | int                  |                                                              |
| swimPosture             | 主泳姿                                                       | int                  |                                                              |
| status                  | 状态                                                         | int                  | -0：无效 1：开始 2：手动暂停 3：<br>结束 4：自动暂停  5秒使用滑动平均<br>第5秒使用1-5秒数据，第6秒使用2-6秒数据 |
| realTimeSpeedPace       | 实时的配速，单位秒                                           | int                  |                                                              |
| trainingEffect          | 有氧训练效果等级                                             | int                  | 范围 0-50 扩大10倍传输                                       |
| anaerobicTrainingEffect | 无氧运动训练效果等级                                         | int                  | 范围 0-50 扩大10倍传输                                       |
| actionType              | 动作类型<br>1快走 <br>2慢跑  <br/>3中速跑 <br/>4快跑  <br/>5结束课程运动 <br/>6课程结束后自由运<br/> | int                  |                                                              |
| countHour               | 运动累积时间 时                                              | int                  | 运动累积时间*=*课程内训练时间*+*课程结束后计时 <br>需要固件开启功能表<br>action_type = 1~5时，<br>该字段是运动倒计时时间<br>（注：时间递减）<br>action_type = 6时，<br>该字段是课程结束后计时<br>（注：时间递增） |
| countMinute             | 运动累积时间 分                                              | int                  | 同上                                                         |
| countSecond             | 运动累积时间 秒                                              | int                  | 同上                                                         |
| baseModel               | 基础数据 日期、时间、运动类型                                | IDOExchangeBaseModel |                                                              |

### IDOAppOperatePlanReplyExchangeModel

| 参数       | 说明                                                         | 类型                 | 备注 |
| ---------- | ------------------------------------------------------------ | -------------------- | ---- |
| planType   | 计划类型<br>1：跑步计划3km，2：跑步计划5km，<br>3：跑步计划10km，4：半程马拉松训练，<br>5：马拉松训练（二期） | int                  |      |
| operate    | 1:  开始运动<br>2：暂停运动<br/>3:   恢复运动 <br/>4：结束运动,<br/>5:   切换动作 | int                  |      |
| actionType | 动作类型: <br>1快走 <br/>2慢跑  <br/>3中速跑 <br/>4快跑  <br/>5结束课程运动 <br/>6课程结束后自由运<br/> | int                  |      |
| errorCode  | 0为成功，非0为失败                                           |                      |      |
| baseModel  | 基础数据 日期、时间、运动类型                                | IDOExchangeBaseModel |      |