# IDOAlarmModel

| 属性    | 类型                                   | 说明                             |
| ------- | -------------------------------------- | -------------------------------- |
| items   | List<IDOAlarmItem> <br/>[IDOAlarmItem] | IDOAlarmItem 集合                |



# `IDOAlarmItem`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| alarmID | Int | 报警ID，从1开始，1~支持的最大报警数 |
| delayMin | Int | 延迟几分钟 |
| hour | Int | 闹钟 时钟 |
| minute | Int | 闹钟 分钟 |
| name | String | 报警名称，最大23字节 |
| isOpen | Bool | 开关 |
| repeats | HashSet<IDOWeek><br/>Set<IDOWeek>() | 重复[IDOWeek](../enum/IDOWeek.md) 集合 |
| repeatTimes | Int | 闹钟重复次数<br/>闹钟重复的次数，延时开关，设置为0则关闭，<br/>设置为某个数字则重复该次数 |
| status | IDOAlarmStatus | 0：隐藏（删除） 1：显示 -1：无效 |
| type | IDOAlarmType | 报警类型 |

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

