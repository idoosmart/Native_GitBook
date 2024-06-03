# `IDOMtuInfoModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| status | Int | 0: The data is valid<br/>1: The data is invalid, please wait a moment and try again. If the data is invalid, the MTU is 20. |
| rxMtu | Int | MTU for data received by the application |
| txMtu | Int | MTU for data sent by the application |
| phySpeed ​​| Int | Physical layer speed<br/>0: Invalid<br/>1000: 1M <br/>2000: 2M<br/>512: 512K |
| dleLength | Int | DLE length<br/>0: Not supported|
