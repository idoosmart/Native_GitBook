# `IDOWatchFaceParamModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| operate | Int | Operation:<br/>0 - Query the currently used dial<br/>1 - Set the dial<br/>2 - Delete the dial<br/>3 - Dynamically request the space to set the corresponding space size |
| fileName | String | Watch face name, maximum 29 bytes |
| watchFileSize | Int | Uncompressed file length<br/>After the firmware opens the function table `getWatchDailSetAddSize`, the application needs to send this field<br/> Before the watch face is transferred, the firmware needs to allocate corresponding space to save, and the uncompressed file length needs to be transferred. |
