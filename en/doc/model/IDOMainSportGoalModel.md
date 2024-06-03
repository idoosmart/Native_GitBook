# `IDOMainSportGoalModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| calorie | Int | Activity calorie goal in kilocalories<br/>Requires firmware to enable menu "setCalorieGoal" |
| distance | Int | Target distance in meters |
| calorieMin | Int | Minimum activity calorie value| 
| calorieMax | Int | Maximum activity caloric value |
| midHighTimeGoal | Int | Medium to high exercise time goal in seconds <br/>Requires firmware to enable the menu "setMidHighTimeGoal" |
| walkGoalTime | Int | Goal time in hours ) |
| timeGoalType | Int | 0: invalid<br/>1: Daily goal<br/>2: Weekly goal<br/>Requires firmware to enable the menu `getSupportSetGetTimeGoalTypeV2` |
