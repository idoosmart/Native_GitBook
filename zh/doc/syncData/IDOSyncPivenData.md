# 同步皮温数据

### 皮温

iOS ：IDOSyncDataType.piven

Android : IDOSyncDataType.PIVEN

**App收到的json字段**：

| 字段名            | 字段类型 | 字段说明                                     |
| ----------------- | -------- | -------------------------------------------- |
| year              | int      | 数据日期 年                                  |
| month             | int      | 数据日期 月                                  |
| day               | int      | 数据日期 日                                  |
| hour              | int      | 数据日期 时                                  |
| minute            | int      | 数据日期 分                                  |
| start_time        | int      | 开始的同步时间 <br />单位秒                  |
| interval_mode     | int      | 自动体温数据保存的间隔<br />单位秒<br />预留 |
| avg_temperature   | int      | 平均的温度 保留一位小数 扩大十倍传输         |
| max_temperature   | int      | 最大的温度 保留一位小数 扩大十倍传输         |
| min_temperature   | int      | 最少的温度 保留一位小数 扩大十倍传输         |
| temperature_count | int      | 体温详情个数                                 |
| items             | 集合     | 体温详情，`offset`&`value`的集合             |

| 字段名 | 字段类型 | 字段说明   |
| ------ | -------- | ---------- |
| offset | int      | 数据的偏移 |
| value  | int      |            |

### 示例

```json
{
    "avg_temperature" : 0,
    "day" : 0,
    "hour" : 0,
    "interval_mode" : 0,
    "items" : [{"offset":0,"value":0}],
    "max_temperature" : 0,
    "min_temperature" : 0,
    "minute" : 0,
    "month" : 0,
    "start_time" : 0,
    "temperature_count" : 0,
    "year" : 0
}
```

