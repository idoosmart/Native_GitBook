# `IDOHeartRateModeSmartModel`

| Properties     | Type | Description                                                  |
| -------------- | ---- | ------------------------------------------------------------ |
| mode           | Int  | switch<br/>0: off<br/>1: on                                  |
| notifyFlag     | Int  | Notification type<br/>0: Invalid<br/>1: Allow notification<br/>2: Silent notification<br/>3: Disable notification |
| highHeartMode  | Int  | 1: Enable smart high heart rate alert<br/>0: Disable         |
| lowHeartMode   | Int  | 1: Enable smart low heart rate alert<br/>0: Disable          |
| highHeartValue | Int  | Smart high heart rate alert threshold                        |
| lowHeartValue  | Int  | Smart low heart rate alert threshold                         |
| startHour      | Int  | Heart rate monitoring start time (hour)                      |
| startMinute    | Int  | Heart rate monitoring start time (minutes)                   |
| endHour        | Int  | Heart rate monitoring end time (hour)                        |
| endMinute      | Int  | Heart rate monitoring end time (minutes)                     |
