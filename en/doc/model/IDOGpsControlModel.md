# `IDOGpsControlModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| type | Int | 1: Enable log<br/>2: Disable log<br/>3: Write AGPS data<br/>4: Erase AGPS data<br/>5: Write GPS firmware |
| status | Int | 0: Invalid<br/>1: Command in progress<br/>2: Completed|
| errorCode | Int | 0 means success, non-0 means failure|
