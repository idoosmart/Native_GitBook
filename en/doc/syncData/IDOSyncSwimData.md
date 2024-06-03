# Synchronize swimming data

### Swimming

iOS: IDOSyncDataType.swim

Android: IDOSyncDataType.SWIM

**json field received by App**: 

| Field name|Field type|Field description|
 | -------------------- | -------- | ------------------------------------------------------------------ |
| year | int | data date year | 
 | month | int | data date month | 
 | day | int | data date day | 
 | hour | int | data date hour | 
 | minute | int | data date minute | 
 | second | int | data date seconds |
| version | int | protocol version number |
| type | int | Type 0 is invalid,<br/>1 is for indoor swimming,<br/>2 is for open water swimming|
| calories | int | calories<br />Unit: Kcal |
| distance | int | distance<br />Unit: meters |
| confirm_distance | int | user confirmation distance<br />Unit: meters |
| duration | int | duration<br />Unit :seconds|
| trips | int | number of swimming trips |
| average_swolf | int | average stroke efficiency |
| total_strokes_number | int | total number of strokes |
| swimming_posture | int | main stroke<br />0 : Medley<br />1: Freestyle<br />2: Breaststroke<br />3: Backstroke<br />4: Butterfly|
| pool_distance | int | Pool distance<br />Unit: meters|
| avg_speed | int | Average pace<br />Sec/100 meters How many seconds does it take to reach 100 meters<br />Unit: seconds<br />version=1 is valid, otherwise the field is 0 |
| avg_frequency | Int | Average stroke Water frequency<br />Unit: times/minute<br />Version=1 is valid, otherwise the field is 0 |
| items | Collection| Swimming data details, `swolf` & `strokesNumber`<br/> & `duration` & `swimmingPosture`<br/> & `distance` & `frequency `<br/>& `speed` & `stop_time` <br/>& Collection of `difference_time`|

| Field name| Field type| Field description |
| ---------------- | -------- | ------------------------------------------------------------ |
| swolf | int | Stroke efficiency | 
| swimming_posture | int | Stroke<br />0: Medley<br />1: Freestyle<br />2: Breaststroke<br />3: Backstroke<br />4: Butterfly|
| strokes_number | int | Number of strokes |
| duration | int | time<br />Unit: seconds |
| distance | int | Distance<br />Unit: meters |
| frequency | int | frequency<br />Unit: times/ Points<br />version=1 is valid, otherwise the field is 0 |
| speed | int | Pace<br />seconds/how many seconds it took to reach 100 meters<br />Unit: seconds<br />version=1 is valid, otherwise the field is 0 |
| stop_time | int | End Time<br />Unit: seconds<br />version=1 is valid, otherwise the field is 0 |
| difference_time | int | Rest time between two trips<br />Unit: seconds<br />version=1 is valid , otherwise the field is 0 |

### Example 

```json
{
	"average_swolf": 113,
	"avg_frequency": 42,
	"avg_speed": 146,
	"calories": 63,
	"confirm_distance": 250,
	"day": 18,
	"distance": 250,
	"duration": 367,
	"hour": 10,
	"items": [{
		"difference_time": 0,
		"distance": 25,
		"duration": 45,
		"frequency": 30,
		"speed": 180,
		"stop_time": 45,
		"strokes_number": 23,
		"swimming_posture": 1,
		"swolf": 136
	}],
	"minute": 3,
	"month": 4,
	"pool_distance": 25,
	"pool_distance_decimal": 0,
	"second": 6,
	"swimming_posture": 4,
	"total_strokes_number": 235,
	"trips": 10,
	"type": 1,
	"version": 2,
	"year": 2024
}
```

