# Synchronize sleep data

### Sleep

iOS: IDOSyncDataType.sleep

Android : IDOSyncDataType.SLEEP

**json field received by App**:

| Field name                  | Field type | Field description                                            |
| --------------------------- | ---------- | ------------------------------------------------------------ |
| data_type                   | int        | 1: Scientific sleep (with REM, breathing score)<br />2: Nap <br />4: Normal sleep<br />6: Nap and does not support scientific sleep |
| fall_asleep_year            | int        | Fall asleep time year                                        |
| fall_asleep_month           | int        | Fall asleep time month                                       |
| fall_asleep_day             | int        | Fall asleep time day                                         |
| fall_asleep_hour            | int        | Fall asleep time hours                                       |
| fall_asleep_minte           | int        | Fall asleep time minutes                                     |
| fall_asleep_minute           | int        | Fall asleep time minutes                                     |
| get_up_year                 | int        | wake up time year                                            |
| get_up_month                | int        | Wake up time month                                           |
| get_up_day                  | int        | wake up time day                                             |
| get_up_hour                 | int        | wake up time hours                                           |
| get_up_minte                | int        | Wake up time minutes                                         |
| get_up_minute                | int        | Wake up time minutes                                         |
| total_sleep_time_mins       | int        | Total sleep time Unit: minutes                               |
| wake_mins                   | int        | Total wake time Unit: minutes                                |
| light_mins                  | int        | Total light sleep duration Unit: minutes                     |
| rem_mins                    | int        | Total eye movement duration Unit: minutes                    |
| deep_mins                   | int        | Total deep sleep duration Unit: minutes                      |
| wake_count                  | int        | number of wakes                                              |
| light_count                 | int        | Number of light sleeps                                       |
| rem_count                   | int        | number of eye movements                                      |
| deep_count                  | int        | number of deep sleeps                                        |
| awrr_status                 | int        | respiratory status                                           |
| sleep_score                 | int        | sleep score                                                  |
| breath_quality              | int        | Breath quality (0 - 100) Unitless                            |
| sleep_avg_hr_value          | int        | Average heart rate during sleep stage                        |
| sleep_avg_spo2_value        | int        | Average blood oxygen value during sleep stage                |
| sleep_avg_respir_rate_value | int        | Average respiratory rate during sleep stages                 |
| item_count                  | int        | Number of sleep details                                      |
| items                       | collection | sleep details, collection of `stage` & `duration`            |

| Field name | Field type | Field description                                            |
| ---------- | ---------- | ------------------------------------------------------------ |
| stage      | int        | Stage <br />1: Awake<br />2: Light sleep<br />3: Deep sleep <br />4: Eye movement |
| duration   | int        | duration in seconds                                          |

### Example

```json
{
     "awrr_status" : 0,
     "breath_quality" : 0,
     "data_type" : 1,
     "deep_count" : 0,
     "deep_mins" : 0,
     "fall_asleep_day" : 0,
     "fall_asleep_hour" : 0,
     "fall_asleep_minte" : 0,
     "fall_asleep_month" : 0,
     "fall_asleep_year" : 0,
     "get_up_day" : 0,
     "get_up_hour" : 0,
     "get_up_minte" : 0,
     "get_up_month" : 0,
     "get_up_year" : 0,
     "item_count" : 0,
     "items" : [{stage:1,duration:500}],
     "light_count" : 0,
     "light_mins" : 0,
     "rem_count" : 0,
     "rem_mins" : 0,
     "sleep_score" : 0,
     "total_sleep_time_mins" : 0,
     "wake_count" : 0,
     "wake_mins" : 0
}
```
