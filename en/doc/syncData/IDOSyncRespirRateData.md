# Synchronize respiration rate data

### Respiration rate

iOS: IDOSyncDataType.respirationRate

Android: IDOSyncDataType.RESPIRATIONRATE

**json field received by App**: 

| Field name| Field type| Field description |
| ---------- | -------- | ---------------------------------------- |
| year | int | data date year | 
 | month | int | data date month | 
 | day | int | data date day | 
 | item_count | int | breath Number of rate details|
| items | Collection| Respiration rate details, collection of `start_time`&`respid`|

| Field name| Field type| Field description|
| ---------- | -------- | -------------------------- |
| start_time | int | Start time, unit seconds ,Offset from 0 point|
| respid | int | Respiration rate value|

### Example

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

