# Synchronize ambient volume data 

### Ambient volume 

iOS: IDOSyncDataType.noise

Android: IDOSyncDataType.NOISE

**json field received by App**: 

|Field name|Field type|Field description |
| ------------- | -------- | ---------------------------------- |
| year | int | data date year|
| month | int | data date month|
| day | int | data date day|
| hour | int | data date hour|
 | minute | int | Data date minute |
| second | int | Data date second |
| version | int | Protocol version number 0 |
| start_time | int | Start synchronization time unit seconds |
| interval_mode | int | 2 The interval unit of data is seconds|
| avg_noise | int | Average noise|
| max_noise | int | Maximum noise|
| min_noise | int | Minimum noise|
| noise_count | int | Number of noise details|
| items | Collection | Noise details, collection of `offset`&`value`|

| Field name| Field type| Field description|
| ------ | -------- | ---------- |
| offset | int | offset of data |
| value | int | noise value |

### Example

```json
{
 "year":2022,
 "month ":12,
 "day":26,
 "hour":11,
 "minute":58,
 "second":30,
 "version":0,
 "start_time":0,
 "interval_mode" :30,
 "avg_noise":50,
 "max_noise":60,
 "min_noise":40,
 "noise_count":2,
 "items":[
 {
 "offset":30,
 "value" :50
 },
 {
 "offset":30,
 "value":50
 }
 ]
}
```

