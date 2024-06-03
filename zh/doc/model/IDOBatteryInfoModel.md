# `IDOBatteryInfoModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| type | Int | 电池类型：0：可充电锂电池，1：纽扣电池 |
| voltage | Int | 电压 |
| status | Int | 电池状态<br/>0：正常<br/>1：充电中<br/>2：充电完成<br/>3：电量低 |
| level | Int | 等级 |
| lastChargingYear | Int | 最后一次充电时间，年份 |
| lastChargingMonth | Int | 最后一次充电时间、月份 |
| lastChargingDay | Int | 最后充电时间，天 |
| lastChargingHour | Int | 最后充电时间，小时 |
| lastChargingMinute | Int | 最后充电时间，分钟 |
| lastChargingSecond | Int | 最后一次充电时间，秒 |
| mode | Int | 0：无效<br/>1：普通模式（非省电模式）<br/>2：省电模式 |
