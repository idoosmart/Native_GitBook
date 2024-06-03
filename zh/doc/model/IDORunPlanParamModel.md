# `IDORunPlanParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| verison | Int | 协议库版本号 |
| operate | Int | 操作<br/>1：启动计划<br/>2：发送计划数据<br/>3：结束计划<br/>4：查询运行计划 |
| type | Int | 计划类型<br/>1：3公里跑步计划<br/>2：5公里跑步计划<br/>3：10公里跑步计划<br/>4：半程马拉松训练（第二阶段）<br/>5：马拉松训练（阶段2） |
| dayNum | Int | 计划天数<br/>运行2天时适用 |
| year | Int | 运动计划开始时间 |
| month | Int | 运动计划开始时间 |
| day | Int | 运动计划开始时间 |
| hour | Int | 运动计划开始时间 |
| min | Int | 运动计划开始时间 |
| sec | Int | 运动计划开始时间 |
| items | List<IDOGpsInfoModelItem> | [IDOGpsInfoModelItem](IDOGpsInfoModelItem.md) 集合 |
