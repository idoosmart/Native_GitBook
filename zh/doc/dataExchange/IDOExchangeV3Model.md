# V3数据交换实体

### IDOExchangeBaseModel

| 参数                                 | 说明     | 类型 | 备注 |
| ------------------------------------ | -------- | ---- | ---- |
| day                                  | 日期     | int  |      |
| hour                                 | 时       | int  |      |
| minute                               | 分       | int  |      |
| second                               | 秒       | int  |      |
| [sportType](../enum/IDOSportType.md) | 运动类型 | int  |      |

### IDOExchangeV3Model

| 参数                    | 说明                                                         | 类型                 | 备注 |
| ----------------------- | ------------------------------------------------------------ | -------------------- | ---- |
| year                    | 训练课程年份                                                 | int                  |      |
| month                   | 训练课程月份                                                 | int                  |      |
| planType                | 计划类型：<br/> 1：跑步计划3km , <br/>2：跑步计划5km , <br/>3：跑步计划10km , <br/>4：半程马拉松训练（二期）,<br/>5：马拉松训练（二期） | int                  |      |
| actionType              | 动作类型: <br/>1:快走；<br/>2:慢跑；<br/>3:中速跑；<br/>4快跑；<br/>5:结束课程运动 <br/>6:课程结束后自由运动 | int                  |      |
| version                 | 协议版本号                                                   | int                  |      |
| operate                 | 1:请求app打开gps  2：发起运动请求                            | int                  |      |
| targetValue             | 目标数值                                                     | int                  |      |
| targetType              | 目标类型:<br>0: 无目标，<br/>1: 重复次数，单位：次，<br/>2: 距离,单位：米,<br/>3: 卡路里, 单位：大卡, <br/>4: 时长,单位：分钟, <br/>5: 步数, 单位：步 | int                  |      |
| forceStart              | 是否强制开始 0:不强制,1:强制                                 | int                  |      |
| retCode                 | 错误码                                                       | int                  |      |
| step                    | 步数                                                         | int                  |      |
| durations               | 持续时间                                                     | int                  |      |
| calories                | 卡路里                                                       | int                  |      |
| distance                | 距离                                                         | int                  |      |
| swimPosture             | 0: 混合泳; 1: 自由泳; 2: 蛙泳; 3: 仰泳; 4: 蝶泳;             | int                  |      |
| status                  | 手环返回的状态 开始:1,暂停:2, 结束:3,0:无效状态              | int                  |      |
| signalFlag              | 信号强弱  0: 表示信号弱， 1: 表示信号强                      | int                  |      |
| isSave                  | 是否存储数据                                                 | Bool                 |      |
| realTimeSpeed           | app计算显示实时速度 单位km/h 100倍 15秒一个记录              | int                  |      |
| realTimePace            | app计算显示实时配速 单位 s                                   | int                  |      |
| interval                | 心率间隔                                                     | int                  |      |
| hrCount                 | 心率个数                                                     | int                  |      |
| burnFatMins             | 燃烧脂肪时长 (单位：分钟)                                    | int                  |      |
| aerobicMins             | 有氧时长 (单位：分钟)                                        | int                  |      |
| limitMins               | 极限时长 (单位：分钟)                                        | int                  |      |
| hrValues                | 心率数据集合                                                 | array                |      |
| warmUpSecond            | 热身锻炼时长(秒钟)                                           | int                  |      |
| anaeroicSecond          | 无氧锻炼时长(秒钟)                                           | int                  |      |
| fatBurnSecond           | 燃脂锻炼时长(秒钟)                                           | int                  |      |
| aerobicSecond           | 有氧锻炼时长(秒钟)                                           | int                  |      |
| limitSecond             | 极限锻炼时长(秒钟)                                           | int                  |      |
| avgHr                   | 平均心率                                                     | int                  |      |
| maxHr                   | 最大心率                                                     | int                  |      |
| curHr                   | 当前心率                                                     | int                  |      |
| warmUpValue             | 热身运动值                                                   | int                  |      |
| fatBurnValue            | 脂肪燃烧运动值                                               | int                  |      |
| aerobicValue            | 有氧运动值                                                   | int                  |      |
| limitValue              | 极限运动值                                                   | int                  |      |
| anaerobicValue          | 无氧运动值                                                   | int                  |      |
| avgSpeed                | 平均速度 km/h                                                | int                  |      |
| maxSpeed                | 最大速度 km/h                                                | int                  |      |
| avgStepFrequency        | 平均步频                                                     | int                  |      |
| maxStepFrequency        | 最大步频                                                     | int                  |      |
| avgStepStride           | 平均步幅                                                     | int                  |      |
| maxStepStride           | 最大步幅                                                     | int                  |      |
| kmSpeed                 | 平均公里配速                                                 | int                  |      |
| fastKmSpeed             | 最快公里配速                                                 | int                  |      |
| kmSpeedCount            | 公里配速个数                                                 | int                  |      |
| kmSpeeds                | 公里配速集合                                                 | array                |      |
| mileCount               | 英里配速个数                                                 | int                  |      |
| mileSpeeds              | 英里配速集合                                                 | array                |      |
| stepsFrequencyCount     | 步频个数                                                     | int                  |      |
| stepsFrequencys         | 步频集合                                                     | array                |      |
| trainingEffect          | 训练效果；  单位：无  <br> 范围 1.0 ~ 5.0 （*10倍）          | int                  |      |
| anaerobicTrainingEffect | 无氧训练效果；  单位：无   <br>范围 1.0 ~ 5.0 （*10倍）      | int                  |      |
| vo2Max                  | 最大摄氧量； <br> 单位：毫升/公斤/分钟； <br>范围  0-80      | int                  |      |
| actionDataCount         | 本次动作训练个数                                             | int                  |      |
| inClassCalories         | 课程内运动热量  单位千卡                                     | int                  |      |
| completionRate          | 动作完成率 0—100                                             | int                  |      |
| hrCompletionRate        | 心率控制率 0—100                                             | int                  |      |
| recoverTime             | 恢复时长：单位小时                                           | int                  |      |
| avgWeekActivityTime     | 上个月平均每周的运动时间 单位分钟                            | int                  |      |
| grade                   | 摄氧量等级<br>1:低等 2:业余 3:一般 4：平均 <br>5：良好 6：优秀 7：专业 | int                  |      |
| actionData              | 动作完成内容<br>type : 动作类型  1快走；2慢跑; 3中速跑；4快跑 <br>heart_con_value : 每个动作心率控制 <br>time : 动作完成时间 单位秒 <br>goal_time ：动作目标时间 | int                  |      |
| trainingOffset          | 训练的课程日期偏移 从0开始                                   | int                  |      |
| countHour               | 运动倒计时                                                   | int                  |      |
| countMinute             | 运动倒计时分                                                 | int                  |      |
| countSecond             | 运动倒计时秒                                                 | int                  |      |
| time                    | 动作目标时间  单位秒                                         | int                  |      |
| lowHeart                | 心率范围低值                                                 | int                  |      |
| heightHeart             | 心率范围高值                                                 | int                  |      |
| paceSpeedCount          | 实时配速个数                                                 | int                  |      |
| paceSpeeds              | 实时配速数组  传过来的是s 每5s算一次                         | array                |      |
| realSpeedCount          | 实时速度个数                                                 | int                  |      |
| realSpeeds              | 实时速度数组 传过来的是s 每5s算一次                          | array                |      |
| baseModel               | 基础数据 日期、时间、运动类型                                | IDOExchangeBaseModel |      |