# Week

### IDOWeek

| Type      | Description |
| --------- | ----------- |
| monday    | Monday      |
| tuesday   | Tuesday     |
| wednesday | wednesday   |
| thursday  | Thursday    |
| friday    | friday      |
| saturday  | saturday    |
| sunday    | Sunday      |



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
     case Monday = 0,
     tuesday,
     Wednesday,
     Thursday,
     friday,
     saturday,
     sunday
}
```
