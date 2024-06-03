# Synchronize GPS data 

### GPS

iOS: IDOSyncDataType.gPS

Android: IDOSyncDataType.GPS

**json field received by App**: 

| Field name|Field type|Field description|
 | ------------- | -------- | ----------- |
| year | int | Data date year |
| month | int | data date month | 
 | day | int | data date day | 
 | hour | int | data date hour | 
 | minute | int | data date minute | 
 | second | int | data date second | 
 | data_interval | int | data offset|
| string_items | char [] | GPS array details|

### Example

```json
{
 "year":2022,
 "month":12,
 "day" :26,
 "hour":10,
 "minute":10,
 "second":10,
 "data_interval":0,
 "stringItems" : 
 [
 "11359.217000E,2240.776500N",
 "113 59.217700 E,2240.775900N",
 "11359.218200E,2240.775600N",
 "11359.218300E,2240.775700N",
 "11359.218400E,2240.776200N",
 
 "11359.218600E,2240.776800N",
 "11359.218600E,2240.777000N" ,
 "11359.218700E,2240.777300N",
 "11359.218800E,2240.777300N",
 "11359.218900E,2240.777200N",
 "11359.2188 00E,2240.777500N"
] 
}
```

