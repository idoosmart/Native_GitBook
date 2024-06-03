# 星期

### IDOWeek

| 类型      | 说明   |
| --------- | ------ |
| monday    | 星期一 |
| tuesday   | 星期二 |
| wednesday | 星期三 |
| thursday  | 星期四 |
| friday    | 星期五 |
| saturday  | 星期六 |
| sunday    | 星期日 |



Android	

```kotlin
enum class IDOWeek(val rawValue: Int):Serializable {
    MONDAY(0),
    TUESDAY(1),
    WEDNESDAY(2),
    THURSDAY(3),
    FRIDAY(4),
    SATURDAY(5),
    SUNDAY(6);
}
```

iOS 

```swift
enum IDOWeek: Int {
    case monday = 0, 
    tuesday, 
    wednesday,
    thursday, 
    friday, 
    saturday,
    sunday
}
```

