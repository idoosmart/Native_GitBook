# `IDOWatchFaceModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| errCode | Int | Error code, 0 means success, non-0 means error |
| operate | Int | Operation:<br/>0 - Query the currently used watch face<br/>1 - Set the watch face<br/>2 - Delete Dial<br/>3 - The space size corresponding to the dynamic request space setting |
| fileName | String | Dial name, up to 29 bytes |
| fileCount | Int | The number of files requires firmware to enable the function table `getWatchDailSetAddSize`<br/> If operate!=3, the data is the same as before, both are 1, and the saving method is the same as before<br/>If operate=3: dynamically request space to set the corresponding space size, this corresponds to the deleted file name list<br/> If `getWatchDailSetAddSize` is not enabled, this field defaults to 1 |
