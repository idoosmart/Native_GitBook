# Synchronize HRV data 

### HRV

iOS: IDOSyncDataType.hRV

Android: IDOSyncDataType.HRV

**json field received by App**: 

| Field name|Field type|Field description|
 | ---------- | -------- | ---------------------------------------- |
| year | int | data date year|
| month | int | data date month|
| day | int | data date day|
| start_time | int | Start time, unit seconds, offset from 0 point|
| items | Collection| HRV data details, collection of `min_offset`&`hrv_value`|

| Field name| Field type| Field description|
| ---------- | -------- | ------------------ |
| min_offset | int | Default offset unit minutes |
| hrv_value | int | HRV data|

### Example

```json
{
 "year":2022,
 "month":12,
 "day":26,
 "start_time":0,
 "items":[
 {
 "min_offset":5,
 "hrv_value":0
 },
 {
 "min_offset":5,
 "hrv_value":0
 }
 ]
}
```
 
 