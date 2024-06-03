# Synchronize pressure data

### pressure

iOS: IDOSyncDataType.pressure

Android : IDOSyncDataType.PRESSURE

**json field received by App**:

| Field name | Field type | Field description                                            |
| ---------- | ---------- | ------------------------------------------------------------ |
| year       | int        | data date year                                               |
| month      | int        | data date month                                              |
| day        | int        | data date day                                                |
| start_time | int        | Start time, unit second, offset from 0 point                 |
| data_type  | int        | ~~0 is invalid, 1 is a value, 2 is the maximum and minimum value~~ (reserved bytes) |
| items      | collection | collection of `offset` & `value`                             |

| Field name | Field type | Field description |
| ---------- | ---------- | ----------------- |
| offset     | int        | offset in minutes |
| value      | int        | pressure value    |

### Example

```json
{
     "year":2022,
     "month":12,
     "day":26,
     "start_time":0,
     "data_type":1,
     "items":[
         {
             "offset":30,
             "value":30,
         },
         {
             "offset":30,
             "value":30,
         }
     ]
}
```
