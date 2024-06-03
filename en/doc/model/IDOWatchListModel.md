# `IDOWatchListModel`

| Property| Type| Description|
| ----------- | ------- | ------------ |
| localWatchNum | Int | Total number of local watch faces |
| cloudWatchNum | Int | Total number of cloud watch faces |
| wallpaperWatchNum | Int | Total number of wallpaper watch faces |
| nowShowWatchName | String | Currently displayed watch face ID, maximum 30 bytes |
| watchFrameMainVersion | Int | Framework version number, starting from 1 |
| fileMaxSize | Int | Maximum size of a single file, in kilobytes Units (reserved) |
| watchCapacitySize | Int | Total watch face capacity<br/>Uint:Byte<br/>Set to 0 if firmware enables `setWatchCapacitySizeDisplay` |
| userWatchCapacitySize | Int | Watch face used capacity<br/> Uint:Byte<br/>If the firmware enables `setWatchCapacitySizeDisplay` then set to 0 |
| usableMaxDownloadSpaceSize | Int | The maximum contiguous space available for downloading watch faces<br/>Uint:Byte<br/>If the firmware enables `setWatchCapacitySizeDisplay` then Set to 0 |
| items | [[IDOWatchItem](IDOWatchItem.md)] | watch face list details |
