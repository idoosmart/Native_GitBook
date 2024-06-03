# 同步呼吸率数据

### 呼吸率

iOS ：IDOSyncDataType.respirationRate

Android : IDOSyncDataType.RESPIRATIONRATE

**App收到的json字段**：

| 字段名     | 字段类型 | 字段说明                                |
| ---------- | -------- | --------------------------------------- |
| year       | int      | 数据日期 年                             |
| month      | int      | 数据日期 月                             |
| day        | int      | 数据日期 日                             |
| item_count | int      | 呼吸率详情个数                          |
| items      | 集合     | 呼吸率详情，`start_time`&`respid`的集合 |

| 字段名     | 字段类型 | 字段说明                      |
| ---------- | -------- | ----------------------------- |
| start_time | int      | 开始时间,单位秒,距离0点的偏移 |
| respid     | int      | 呼吸率值                      |

### 示例

```json
{
    "year":2022,
    "month":12,
    "day":26,
    "item_count":3,
    "items":[
        {
            "start_time":0,
            "respid":80
        },
        {
            "start_time":100,
            "respid":80
        },
        {
            "start_time":100,
            "respid":80
        }
    ]
}
```

