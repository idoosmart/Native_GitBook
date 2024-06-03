# `IDOSportSortModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| errCode | Int | 0: Success, non-zero: Failure |
| operate | Int | Operation<br/>0: Invalid 1: Query 2: Settings |
| sportType | [IDOSportType](../enum/IDOSportType.md ) | Sports type | 
 | nowUserLocation | Int | Displays the current location of the added sports item, and the application displays it based on the location. The device added before corresponds to the location, and the device added later corresponds to the location after the location. Only valid for query |
| items | [Int] | Setting list Maximum value 50 |
