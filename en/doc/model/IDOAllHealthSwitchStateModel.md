# `IDOAllHealthSwitchStateModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| heartMode | Int | Continuous heart rate measurement switch:<br/>1: On<br/>0: Off<br/>-1: Not supported|
| pressureMode | Int | Automatic blood pressure measurement switch<br/>1: On <br/>0: Off<br/>-1: Not supported |
| spo2Mode | Int | Automatic blood oxygen measurement switch<br/>1: On<br/>0: Off<br/>-1: No Support|
| scienceMode | Int | Scientific sleep switch<br/>2: Scientific sleep mode<br/>1: Normal sleep mode<br/>-1: Not supported|
| temperatureMode | Int | Night temperature switch<br/> />1: On<br/>0: Off<br/>-1: Not supported |
| noiseMode | Int | Noise switch<br/>1: On<br/>0: Off<br/>-1 : Not supported |
| menstrualMode | Int | Menstrual cycle switch<br/>1: On<br/>0: Off<br/>-1: Not supported |
| walkMode | Int | Walking reminder switch<br/> 1: On<br/>0: Off<br/>-1: Not supported|
| handwashingMode | Int | Hand washing reminder switch<br/>1: On<br/>0: Off<br/>-1: Not supported |
| respirRateState | Int | Respiration rate switch<br/>1: On<br/>0: Off<br/>-1: Not supported|
| bodyPowerState | Int | Body battery switch<br/> 1: On<br/>0: Off<br/>-1: Not supported |
| drinkwaterMode | Int | Drink water reminder switch<br/>1: On<br/>0: Off<br/>-1 : Not supported |
| heartmodeNotifyFlag | Int | Heart rate notification status:<br/>0 Invalid<br/>1 Allow notifications<br/>2 Mute notifications<br/>3 Disable notifications|
| pressureNotifyFlag | Int | Blood pressure notification Status:<br/>0 Invalid<br/>1 Allow notification<br/>2 Silent notification<br/>3 Disable notification|
| spo2NotifyFlag | Int | Blood oxygen notification status:<br/>0 is invalid<br />1 means allow notification<br/>2 means silent notification<br/>3 means disable notification |
| menstrualNotifyFlag | Int | Menstrual cycle notification status:<br/>0 Invalid<br/>1 Allow notification<br/ >2 Silent notification<br/>3 Disable notification|
| guidanceNotifyFlag | Int | Fitness guidance notification status:<br/>0 Invalid<br/>1 Allow notification<br/>2 Silent notification<br/>3 Disable notification |
| reminderNotifyFlag | Int | Reminder notification status:<br/>0 Invalid<br/>1 Allow notification<br/>2 Silent notification<br/>3 Disable notification|
