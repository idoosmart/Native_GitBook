# `IDOWatchItem`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| type | Int | Watch face type<br/>1: Ordinary watch face<br/>2: Wallpaper watch face<br/>3: Cloud watch face |
| watchVersion | Int | The current version number of the watch face (applicable to cloud watch faces) |
| sortNumber | Int | watch face sequence number<br/>Starts from 0|
| name | String | watch face name|
| size | Int | watch face size in bytes<br/>Only when firmware enables `getWatchDailSetAddSize` applicable, otherwise the field is invalid |
