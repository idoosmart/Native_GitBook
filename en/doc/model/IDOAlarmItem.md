# IDOAlarmModel

| Properties | Type                                   | Description             |
| ---------- | -------------------------------------- | ----------------------- |
| items      | List<IDOAlarmItem> <br/>[IDOAlarmItem] | IDOAlarmItem collection |



# `IDOAlarmItem`

| Properties  | Type                                | Description                                                  |
| ----------- | ----------------------------------- | ------------------------------------------------------------ |
| alarmID     | Int                                 | Alarm ID, starting from 1, 1 ~ the maximum number of alarms supported |
| delayMin    | Int                                 | How many minutes to delay                                    |
| hour        | Int                                 | alarm clock clock                                            |
| minute      | Int                                 | alarm minute                                                 |
| name        | String                              | Alarm name, maximum 23 bytes                                 |
| isOpen      | Bool                                | Switch                                                       |
| repeats     | HashSet<IDOWeek><br/>Set<IDOWeek>() | Repeat[IDOWeek](../enum/IDOWeek.md) set                      |
| repeatTimes | Int                                 | Number of times the alarm repeats<br/>The number of times the alarm repeats, delay switch, set to 0 to turn off,<br/>set to a certain number to repeat the number of times |
| status      | IDOAlarmStatus                      | 0: Hide (delete) 1: Show -1: Invalid                         |
| type        | IDOAlarmType                        | alarm type                                                   |

# IDOAlarmStatus

Android

```kotlin
enum class IDOAlarmStatus(val rawValue: Int) {
     INVALID(-1),
     HIDDEN(0),
     DISPLAYED(1);
}
```

iOS

```swift
public enum IDOAlarmStatus: Int {
     case invalid = -1
     case hidden = 0
     case displayed = 1
}
```

# IDOAlarmType

Android

```kotlin
enum class IDOAlarmType(val rawValue: Int) {
     WAKEUP(0x00),
     SLEEP(0x01),
     EXERCISE(0x02),
     MEDICATION(0x03),
     DATE(0x04),
     GATHERING(0x05),
     MEETING(0x06),
     OTHER(0x07);
}
```

iOS

```swift
public enum IDOAlarmType: Int {
     case wakeUp = 0x00
     case sleep = 0x01
     case exercise = 0x02
     case medication = 0x03
     case date = 0x04
     case gathering = 0x05
     case meeting = 0x06
     case other = 0x07
}
```
