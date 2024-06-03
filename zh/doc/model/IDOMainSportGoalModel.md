# `IDOMainSportGoalModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| calorie | Int | 活动卡路里目标（以千卡为单位）<br/>需要固件启用功能表“setCalorieGoal” |
| distance | Int | 目标距离（米） |
| calorieMin | Int | 最低活动热量值 |
| calorieMax | Int | 最大活动热量值 |
| midHighTimeGoal | Int | 中高运动时间目标（以秒为单位）<br/>需要固件启用功能表“setMidHighTimeGoal” |
| walkGoalTime | Int | 目标时间（小时） |
| timeGoalType | Int | 0：无效<br/>1：每日目标<br/>2：每周目标<br/>需要固件启用功能表`getSupportSetGetTimeGoalTypeV2` |
