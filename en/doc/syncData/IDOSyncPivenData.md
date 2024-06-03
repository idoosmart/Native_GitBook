# Synchronize skin temperature data

### Piwen

iOS: IDOSyncDataType.piven

Android: IDOSyncDataType.PIVEN

**json field received by App**:

| Field name | Field type | Field description |
| ------------------ | -------- | ----------------------- ----------------------- |
| year | int | data date year |
| month | int | data date month |
| day | int | data date day |
| hour | int | data date hour |
| minute | int | data date minute |
| start_time | int | Start synchronization time <br />Unit seconds |
| interval_mode | int | The interval for saving automatic body temperature data<br />Unit seconds<br />Reserved |
| avg_temperature | int | Average temperature. Keep one decimal place. Expand transmission ten times |
| max_temperature | int | Maximum temperature. Keep one decimal place. Expand transmission ten times |
| min_temperature | int | Minimum temperature. Keep one decimal place. Expand transmission ten times |
| temperature_count | int | Number of temperature details |
| items | Collection | Body temperature details, collection of `offset`&`value` |

| Field name | Field type | Field description |
| ------ | -------- | ---------- |
| offset | int | offset of data |
| value | int | |

### Example

```json
{
     "avg_temperature" : 0,
     "day" : 0,
     "hour" : 0,
     "interval_mode" : 0,
     "items" : [{"offset":0,"value":0}],
     "max_temperature" : 0,
     "min_temperature" : 0,
     "minute" : 0,
     "month" : 0,
     "start_time" : 0,
     "temperature_count" : 0,
     "year" : 0
}
```