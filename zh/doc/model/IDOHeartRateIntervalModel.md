# `IDOHeartRateIntervalModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| burnFatThreshold | int | 脂肪训练心率区间<br/>计算规则:最大心率的50%-69%<br/>单位:次/分钟 |
| aerobicThreshold | int | 心肺训练心率区间<br/>计算规则:最大心率的70%-84%<br/>单位:次/分钟 |
| limitThreshold | int | 峰值训练心率区间<br/>计算规则:最大心率的85%-100%<br/>单位:次/分钟 |
| userMaxHr | int | 心率上限,最大心率提醒<br/>单位:次/分钟 |
| range1 | int | 热身运动心率区间<br/>计算规则：(200-年龄) * 50<br/>单位:次/分钟 |
| range2 | int | 脂肪燃烧心率区间<br/>计算规则：(200-年龄) * 60<br/>单位:次/分钟 |
| range3 | int | 有氧运动心率区间<br/>计算规则：(200-年龄) * 70<br/>单位:次/分钟 |
| range4 | int | 无氧运动心率区间<br/>计算规则：(200-年龄) * 80<br/>单位:次/分钟 |
| range5 | int | 极限锻炼心率区间<br/>计算规则：(200-年龄) * 90<br/>单位:次/分钟 |
| minHr | int | 心率最小值<br/>单位:次/分钟 |
| maxHrRemind | int | 最大心率提醒<br/>0 关闭,1 开启 |
| minHrRemind | int | 最小心率提醒<br/>0 关闭,1 开启 |
| remindStartHour | int | 提醒开始 时 |
| remindStartMinute | int | 提醒开始 分 |
| remindStopHour | int | 提醒结束 时 |
| remindStopMinute | int | 提醒结束 分 |
