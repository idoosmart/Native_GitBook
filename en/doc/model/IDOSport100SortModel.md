# `IDOSport100SortModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| errCode | Int | 0: Success, non-zero: Failure | 
 | operate | Int | Operation<br /> 0: Invalid 1: Query 2: Settings | 
 | minShowNum | Int | Minimum number of items to display, at least 1 | 
| maxShowNum | Int | Maximum number of displayed items, up to 20 |
| nowUserLocation | Int | Displays the current location of the added sports items. The application displays based on the location. The device added before corresponds to the location, and the device added later corresponds to the location. The position after the should position. Only valid for queries |
| items | List<IDOSport100SortItem> | Collection [IDOSport100SortItem](IDOSport100SortItem.md) |

