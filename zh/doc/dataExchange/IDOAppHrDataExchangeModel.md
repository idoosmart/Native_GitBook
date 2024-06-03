# 多运动心率数据实体

### IDOExchangeBaseModel

| 参数                                 | 说明     | 类型 | 备注 |
| ------------------------------------ | -------- | ---- | ---- |
| day                                  | 日期     | int  |      |
| hour                                 | 时       | int  |      |
| minute                               | 分       | int  |      |
| second                               | 秒       | int  |      |
| [sportType](../enum/IDOSportType.md) | 运动类型 | int  |      |

### IDOAppHrDataExchangeModel

| 参数                | 说明                                      | 类型                 | 备注 |
| ------------------- | ----------------------------------------- | -------------------- | ---- |
| version             | 协议版本号                                | int                  |      |
| heartRateHistoryLen | 心率数据数组长度 最大60                   | int                  |      |
| interval            | 心率间隔 单位秒                           | int                  |      |
| heartRates          | 心率数据数组 存一分钟的心率数据, 1s存一个 | array                |      |
| baseModel           | 基础数据 日期、时间、运动类型             | IDOExchangeBaseModel |      |