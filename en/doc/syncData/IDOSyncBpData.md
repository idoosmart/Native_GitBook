# Synchronize blood pressure data

### blood pressure

iOS: IDOSyncDataType.bloodPressure

Android : IDOSyncDataType.BLOODPRESSURE

**json field received by App**:

| Field name   | Field type | Field description                                            |
| ------------ | ---------- | ------------------------------------------------------------ |
| year         | int        | data date year                                               |
| month        | int        | data date month                                              |
| day          | int        | data date day                                                |
| start_time   | int        | Start time, unit second, offset from 0 point                 |
| sleep_avg_bp | int        | Sleep average blood pressure value                           |
| max_bp       | int        | Maximum blood pressure                                       |
| item_count   | int        | Number of blood pressure details                             |
| items        | Collection | Blood pressure details, collection of `offset`&`sys_blood`&`dias_blood` |

| Field name | Field type | Field description                                            |
| ---------- | ---------- | ------------------------------------------------------------ |
| offset     | int        | Data offset unit: minutes (blood pressure data interval is offset by minutes) |
| sys_blood  | int        | Maximum systolic blood pressure                              |
| dias_blood | int        | minimum systolic blood pressure                              |

### Example

```json
{
     "year":2022,
     "month":12,
     "day":26,
     "start_time":0,
     "sleep_avg_bp":0,
     "max_bp":0,
     "item_count":3,
     "items":[
         {
             "offset":5,
             "sys_blood":120,
             "dias_blood":70
         },
         {
             "offset":5,
             "sys_blood":120,
             "dias_blood":70
         },
         {
             "offset":5,
             "sys_blood":120,
             "dias_blood":70
         }
     ]
}
```
