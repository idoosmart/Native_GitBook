# V2数据交换实体

### IDOExchangeBaseModel

| 参数                                 | 说明     | 类型 | 备注 |
| ------------------------------------ | -------- | ---- | ---- |
| day                                  | 日期     | int  |      |
| hour                                 | 时       | int  |      |
| minute                               | 分       | int  |      |
| second                               | 秒       | int  |      |
| [sportType](../enum/IDOSportType.md) | 运动类型 | int  |      |

### IDOExchangeV2Model

| 参数        | 说明                                                         | 类型                 | 备注 |
| ----------- | ------------------------------------------------------------ | -------------------- | ---- |
| operate     | 1:请求app打开gps <br>2：发起运动请求                         | int                  |      |
| targetValue | 目标数值                                                     | int                  |      |
| targetType  | 运动目标类型<br/>0: 无目标，<br/>1: 重复次数，单位：次，<br/>2: 距离,单位：米,  <br/>3: 卡路里, 单位：大卡, <br/>4: 时长,单位：分钟, <br/>5:  步数, 单位：步 | int                  |      |
| forceStart  | 是否强制开始 0:不强制,1:强制                                 |                      |      |
| retCode     | 错误码<br>0:成功; <br/>1:设备已经进入运动模式失败;<br/>2: 设备电量低失败; <br/>3:手环正在充电 <br/>4:正在使用Alexa <br/>5:通话中 | int                  |      |
| calories    | 卡路里 (单位:J)                                              | int                  |      |
| distance    | 距离 (单位:米)                                               | int                  |      |
| durations   | 持续时间 (单位:秒钟)                                         | int                  |      |
| step        | 步数 (单位:步)                                               | int                  |      |
| avgHr       | 平均心率                                                     | int                  |      |
| maxHr       | 最大心率                                                     | int                  |      |
| curHr       | 当前心率                                                     | int                  |      |
| hrSerial    | 序列号                                                       | int                  |      |
| burnFatMins | 燃烧脂肪时长 (单位：分钟)                                    | int                  |      |
| aerobicMins | 有氧时长 (单位：分钟)                                        | int                  |      |
| limitMins   | 极限时长 (单位：分钟)                                        | int                  |      |
| isSave      | 是否存储数据                                                 | bool                 |      |
| status      | 0:全部有效, <br>1:距离无效，<br> 2: gps 信号弱               | int                  |      |
| interval    | 心率间隔                                                     | int                  |      |
| hrValues    | 心率数据集合                                                 | array                |      |
| baseModel   | 基础数据 日期、时间、运动类型                                | IDOExchangeBaseModel |      |

