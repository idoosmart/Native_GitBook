# `IDODataTranConfigModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| errCode | Int | Error code<br/>0: Normal<br/>Non-zero: Error |
| type | Int | Icon type corresponding to the activity type<br/>0: Invalid<br/>1: Activity small icon <br/>2: Activity large icon<br/>3: Activity animation icon<br/>4: Medium size activity icon|
| evtType | Int | Event type<br/>0: Invalid<br/>For example 1: SMS, 2: Email, 3: WeChat, etc. |
| sportType | Int | Activity type<br/>0: Invalid<br/>Activity mode type, 1: walking, 2: running, etc. |
| iconWidth | Int | The required width of the firmware icon (determined by type and evt_type/sport_type) |
| iconHeight | Int | The required height of the firmware icon (determined by type and evt_type/sport_type) |
| format | Int | Color format | 
 | blockSize | Int | Compression block size | 
 | bigSportsNum | Int | Number of large sports icons | 
 | msgNum | Int | Number of message icons | | mediumNum | Int | Number of medium-sized icons |
