# Synchronize heart rate data

### Heart rate

iOS: IDOSyncDataType.heartRate

Android : IDOSyncDataType.HEARTRATE

**json field received by App**:

| Field name        | Field type | Field description                                            |
| ----------------- | ---------- | ------------------------------------------------------------ |
| year              | int        | data date year                                               |
| month             | int        | data date month                                              |
| day               | int        | data date day                                                |
| start_time        | int        | Start time, unit second, offset from 0 point                 |
| data_type         | int        | ~~0 is invalid, 1 is a value, 2 is the maximum and minimum value~~ (reserved field) |
| silent_hr         | int        | Resting heart rate                                           |
| five_min_max_data | int        | Five-minute maximum heart rate                               |
| five_min_min_data | int        | Five-minute minimum heart rate                               |
| five_min_avg_data | int        | Five-minute heart rate average                               |
| five_min_data     | int []     | All five-minute heart rate values                            |
| hr_data_count     | int        | The number of heart rate data when it is too high or too low <br />When the `getSupportSyncOverHighLowHeartData` menu is not opened, it returns 0 |
| hr_interval       | Collection | 5 heart rate zones:<br/>Warm-up heart rate zone<br/>Ultimate heart rate zone<br/>Fat-burning heart rate zone<br/>Aerobic endurance heart rate zone<br/>Anaerobic endurance heart rate zone <br />Collection of `threshold` & `minute` |
| items             | Collection | Collection of heart rate data `offset` & `heart_rateVal`     |
| hr_data           | Collection | Collection of high and low heart rate data `hour` & `minute` & `type` & `heart_rate`<br /> Returns 0 when the `getSupportSyncOverHighLowHeartData` menu is not opened |

| Field name    | Field type | Field description |
| ------------- | ---------- | ----------------- |
| offset        | int        | offset in seconds |
| heart_rateVal | int        | heart rate value  |

| Field name | Field type | Field description |
| ---------- | ---------- | ----------------- |
| threshold  | int        | threshold         |
| minute     | int        | minute            |

| Field name | Field type | Field description                                            |
| ---------- | ---------- | ------------------------------------------------------------ |
| hour       | int        | The heart rate data time when it is too high or too low. Returns 0 when the `getSupportSyncOverHighLowHeartData` menu is not opened |
| minute     | int        | The heart rate data time minute when it is too high or too low<br /> Returns 0 when the `getSupportSyncOverHighLowHeartData` menu is not opened |
| type       | int        | Heart rate value type <br />0: Heart rate value when the heart rate is too low <br />1: Heart rate value when the heart rate is too high<br /> Returns 0 when the `getSupportSyncOverHighLowHeartData` menu is not opened |
| heart_rate | int        | Heart rate value Unit: beats/minute<br /> Returns 0 when the `getSupportSyncOverHighLowHeartData` menu is not opened |

### Example

```json
{
     "year":2022,
     "month":12,
     "day":26,
     "start_time":0,
     "data_type":0,
     "silent_hr":85,
     "five_min_max_data":0,
     "five_min_min_data":0,
     "five_min_avg_data":0,
     "hr_data_count":2,
     "five_min_data":[
         85,
         90,
         80,
         83
     ],
     "hr_interval":[
         {
             "threshold": 80,
             "minute": 5
         },
         {
             "threshold": 85,
             "minute": 5
         },
         {
             "threshold": 85,
             "minute": 5
         },
         {
             "threshold": 85,
             "minute": 5
         },
         {
             "threshold": 85,
             "minute": 5
         }
     ],
     "items":[
         {
             "offset":80,
             "heart_rateVal":5
         },
         {
             "offset":83,
             "heart_rateVal":5
         }
     ],
     "hr_data":[
         {
             "hour":11,
             "minute":25,
             "type":1,
             "heart_rate":120
         },
         {
             "hour":11,
             "minute":25,
             "type":0,
             "heart_rate":70
         }
     ]
}
```
