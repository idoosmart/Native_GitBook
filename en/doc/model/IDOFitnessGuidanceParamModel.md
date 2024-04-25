# `IDOFitnessGuidanceParamModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| mode | Int | Fitness guidance mode switch<br/>1: On<br/>0: Off|
| startHour | Int | Start time|
| startMinute | Int | Start minute|
| endHour | Int | End time| 
| endMinute | Int | end minute | 
| notifyFlag | Int | notification type<br/>0: invalid<br/>1: allowed<br/>2: silent<br/>3: disabled|
| goMode | Int | Move switch reminder<br/>1: On<br/>0: Off|
| repeats | Set<IDOWeek> | Repeat[IDOWeek](../enum/IDOWeek.md) Set|
| isOpen | Bool | Master switch|
| targetSteps | Int | Number of target steps|

