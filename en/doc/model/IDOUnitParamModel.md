# `IDOUnitParamModel`

| Properties | Type | Description |
| ------------------ | ---- | -------------------------- ---------------------------------- |
| distUnit | Int | Distance unit:<br/>0: Invalid<br/>1: Kilometer (metric)<br/>2: Mile (imperial) |
| weightUnit | Int | Weight unit:<br/>0: invalid<br/>1: kg<br/>2: lb |
| temp | Int | Temperature unit:<br/>0: invalid<br/>1: ℃<br/>2: ℉ |
| stride | Int | Walking stride:<br/>0: invalid<br/>0: cm |
| language | Int | [language](../IDOLanguageCode.md) |
| is12HourFormat | Int | Time format:<br/>0: invalid<br/>1: 24-hour format<br/>2: 12-hour format |
| strideRun | Int | Running stride:<br/>0: invalid<br/>1: cm<br/>Male default value: 90cm |
| strideGpsCal | Int | Via GPS stride calibration on/off:<br/>0: Invalid<br/>1: On<br/>2: Off |
| weekStartDate | Int | The start date of the week:<br/>0: Monday<br/>1: Sunday<br/>3: Saturday |
| calorieUnit | Int | Calorie unit settings:<br/>0: Invalid<br/>1: Default kCal<br/>2: Cal<br/>3: kJ |
| swimPoolUnit | Int | Pool unit setting:<br/>0: invalid<br/>1: Default meters<br/>2: yards |
| cyclingUnit | Int | Cycling unit:<br/>0: Invalid<br/>1: Kilometers<br/>2: Miles |
| walkingRunningUnit | Int | Walking or running unit (km/mile) settings:<br/>0: Invalid<br/>1: Kilometers<br/>2: Miles<br/>Requires device firmware `setSupportWalkRunUnit` Support |