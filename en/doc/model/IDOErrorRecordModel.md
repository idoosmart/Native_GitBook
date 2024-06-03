# `IDOErrorRecordModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| type | Int | 0 query<br/>1 clear log|
| resetFlag | Int | 0 normal<br/>1 hard fault<br/>2 watchdog service<br/>3 assertion reset<br/> 4 Power outage<br/>5 Other exceptions|
| hwError | Int | Hardware error code<br/>0 Normal<br/>1 Accelerometer error<br/>2 Heart rate error<br/>3 TP error< br/>4 Flash memory error|
