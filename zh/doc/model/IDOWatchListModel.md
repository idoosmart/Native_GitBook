# `IDOWatchListModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| localWatchNum | Int | 本地表盘总数 |
| cloudWatchNum | Int | 云表盘总数 |
| wallpaperWatchNum | Int | 壁纸表盘总数 |
| userCloudWatchNum | Int | 使用的云表盘数量 |
| userWallpaperWatchNum | Int | 使用的壁纸表盘数量 |
| nowShowWatchName | String | 当前显示的表盘ID，最大30字节 |
| watchFrameMainVersion | Int | 框架版本号，从1开始 |
| fileMaxSize | Int | 单个文件的最大大小，以千字节为单位（保留） |
| watchCapacitySize | Int | 表盘总容量<br/>Uint:Byte<br/>如果固件启用`setWatchCapacitySizeDisplay`则设置为0 |
| userWatchCapacitySize | Int | 表盘已用容量<br/>Uint:Byte<br/>如果固件启用`setWatchCapacitySizeDisplay`则设置为0 |
| usableMaxDownloadSpaceSize | Int | 可用于下载表盘的最大连续空间<br/>Uint:Byte<br/>如果固件启用`setWatchCapacitySizeDisplay`则设置为0 |
| items | [[IDOWatchItem](IDOWatchItem.md)] | 表盘列表详情 |
