# `IDOWorldTimeParamModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| id | Int | Detailed ID, unique | 
 | minOffset | Int | Offset in minutes from the current time to UTC 0 | 
 | cityName | String | City name, up to 59 bytes | 
| longitudeFlag | Int | 1: East longitude 2: West longitude |
| longitude | Int | Longitude, multiplied by 100, retained to 2 decimal places |
| latitudeFlag | Int | 1: North latitude 2: South latitude |
| latitude | Int | Latitude, multiplied by 100, retained 2 decimal places|
