# 多运动小结数据实体

### IDOExchangeBaseModel

| 参数                                 | 说明     | 类型 |
| ------------------------------------ | -------- | ---- |
| day                                  | 日期     | int  |
| hour                                 | 时       | int  |
| minute                               | 分       | int  |
| second                               | 秒       | int  |
| [sportType](../enum/IDOSportType.md) | 运动类型 | int  |

### IDOAppActivityDataV3ExchangeModel

| 参数                  | 说明                                                         | 类型                 |
| --------------------- | ------------------------------------------------------------ | -------------------- |
| year                  | 年份                                                         | int                  |
| month                 | 月份                                                         | int                  |
| version               | 协议版本号                                                   | int                  |
| hrInterval            | 心率间隔 单位分钟                                            | int                  |
| step                  | 步数                                                         | int                  |
| durations             | 持续时间                                                     | int                  |
| calories              | 卡路里                                                       | int                  |
| distance              | 距离                                                         | int                  |
| burnFatMins           | 脂肪燃烧的心率持续时间 单位分钟                              | int                  |
| aerobicMins           | 有氧运动的持续时间 单位分钟                                  | int                  |
| limitMins             | 极限锻炼的持续时间 单位分钟                                  | int                  |
| warmUp                | 热身运动                                                     | int                  |
| fatBurning            | 脂肪燃烧                                                     | int                  |
| aerobicExercise       | 有氧训练                                                     | int                  |
| anaerobicExercise     | 无氧训练                                                     | int                  |
| extremeExercise       | 极限训练                                                     | int                  |
| warmUpTime            | 热身运动的累计时长 单位秒                                    | int                  |
| fatBurningTime        | 脂肪燃烧的累计时长 单位秒                                    | int                  |
| aerobicExerciseTime   | 有氧运动的累计时长 单位秒                                    | int                  |
| anaerobicExerciseTime | 无氧运动的累计时长 单位秒                                    | int                  |
| extremeExerciseTime   | 极限锻炼的累计时长 单位秒                                    | int                  |
| avgSpeed              | 平均速度 单位km/h                                            | int                  |
| maxSpeed              | 最快速度 单位km/h                                            | int                  |
| avgStepStride         | 平均步幅                                                     | int                  |
| maxStepStride         | 最大步幅                                                     | int                  |
| kmSpeed               | 平均公里配速                                                 | int                  |
| fastKmSpeed           | 最快公里配速                                                 | int                  |
| avgStepFrequency      | 平均步频                                                     | int                  |
| maxStepFrequency      | 最大步频                                                     | int                  |
| avgHrValue            | 平均心率                                                     | int                  |
| maxHrValue            | 最大心率                                                     | int                  |
| recoverTime           | 恢复时长 单位小时 app收到该数据之后，<br>每过1小时需要自减1  | int                  |
| vo2max                | 最大摄氧量 单位 ml/kg/min                                    | int                  |
| trainingEffect        | 训练效果 范围： 1.0 - 5.0 （扩大10倍传输）                   | int                  |
| grade                 | 摄氧量等级 1：低等 2：业余 3：<br>一般 4：平均 5：良好 6：优秀 7：专业 | int                  |
| stepsFrequencyCount   | 步频详情个数                                                 | int                  |
| miSpeedCount          | 英里配速个数 最大100                                         | int                  |
| realSpeedCount        | 实时速度个数                                                 | int                  |
| paceSpeedCount        | 实时配速个数                                                 | int                  |
| kmSpeedCount          | 公里配速详情个数 最大100                                     | int                  |
| actionDataCount       | 本次动作训练个数                                             | int                  |
| kmSpeeds              | 每公里耗时秒数 配速集合                                      | array                |
| stepsFrequency        | 步频集合 单位步/分钟                                         | array                |
| itemsMiSpeed          | 英里配速数组                                                 | array                |
| itemRealSpeed         | 实时速度数组 单位km/h                                        | array                |
| paceSpeedItems        | 实时配速数组                                                 | array                |
| actionData            | 动作完成内容<br/> type : 动作类型  1快走；2慢跑; 3中速跑；4快跑 <br/> heart_con_value : 每个动作心率控制 <br> time : 动作完成时间 单位秒 <br/> goal_time ：动作目标时间 | array                |
| baseModel             | 基础数据 日期、时间、运动类型                                | IDOExchangeBaseModel |