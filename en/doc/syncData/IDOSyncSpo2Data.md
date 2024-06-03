# Synchronize blood oxygen data

### Blood oxygen

iOS: IDOSyncDataType.bloodOxygen

Android: IDOSyncDataType.BLOODOXYGEN

**json field received by App**: 

| Field name | Field type | Field description |
| ---------- | -------- | ------------------------------------------------ |
| year | int | data date year | 
 | month | int | data date month | 
 | day | int | data date day |
| start_time | int | Start time, unit second, offset from 0 point |
| data_type | int | ~~0 is invalid, 1 is a value, 2 is the maximum and minimum value~~<br />Preliminary stay |
| items | collection | collection of `offset`&`value` |

| field name | field type | field description |
| ------ | -------- | ------------------------------------------------------------ |
| offset | int | Default offset unit is seconds<br/>If the function table `getSpo2OffChangeV3` is configured, the data offset is in minutes |
| value | int | average blood oxygen level| 

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

