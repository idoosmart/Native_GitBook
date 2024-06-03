# Synchronize motion data

### Step count

iOS: IDOSyncDataType.stepCount

Android : IDOSyncDataType.STEPCOUNT

**json field received by App**:

| Field name | Field type | Field description |
| ---------------------------- | -------- | ----------- -------------------------------------------------- |
| version | int | Protocol version number <br />0: No wearing identification data<br />16: There is wearing identification data, firmware configuration is required `v3SupportWearFlag` menu |
| year | int | data date year |
| month | int | data date month |
| day | int | data date day |
| start_time | int | Start time, unit minute, offset from 0 o'clock |
| per_minute | int | The minute interval between each piece of data (default 15 minutes) <br />206 customization added: duration interval 1 minute<br />If the generation interval is one minute, the app needs to judge<br/>`getSupportPerMinuteOne` To determine whether the firmware supports the one-minute synchronization type |
| total_step | int | total number of steps |
| total_rest_activity_calories | int | total activity + resting calories |
| total_distances | int | Total distance miles data = firmware distance (meters) multiplied by 0.00062 |
| total_active_time | int | The active time of the day in minutes |
| total_activity_calories | int | total activity calories |
| walk_goal_time | int | The actual walking time of the firmware needs to be configured in hours |
| item_count | int | Number of sports data details |
| wear_flag_array | int [] | Number of wearing minutes for each hour of 24 hours, maximum 24 bytes<br /> Returns 0 when the `getSupportSyncOverHighLowHeartData` menu is not enabled |
| items | Collection | Exercise data details (refer to the table below), collection of `mode`&`step_count`&`active_time`&<br/>`activity_calories`&`distance`&`rest_activity_calories` |

| Field name | Field type | Field description |
| ----------------------- | -------- | ------------------ ---------------------------------------- |
| mode | int | Mode 00: quiet, 01: mild, 10: moderately active, 11: intense |
| step_count | int | number of steps |
| active_time | int | Active time in minutes, the maximum `per_minute` parameter is determined, currently it is 15 minutes |
| activity_calories | int | activity calories |
| distance | int | distance in meters |
| rest_activity_calories | int | activity + resting calories |

### Example

```json
{
     "day" : 26,
       "item_count" : 47,
       "items" :
       [
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         },
         {
           "active_time" : 0,
           "activity_calories" : 0,
           "distance" : 0,
           "mode" : 0,
           "rest_activity_calories" : 0,
           "step_count" : 0
         }
       ],
       "month" : 12,
       "per_minute" : 15,
       "start_time" : 0,
       "total_active_time" : 0,
       "total_activity_calories" : 0,
       "total_distances" : 0,
       "total_rest_activity_calories" : 0,
       "total_step" : 0,
       "version" : 0,
       "walk_goal_time" : 0,
       "wear_flag_array" :
       [
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0
       ],
       "year" : 2022
}
```