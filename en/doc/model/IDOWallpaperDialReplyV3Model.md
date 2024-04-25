# `IDOWallpaperDialReplyV3Model`

| Properties| Type| Description|
| ----------- | ------- | ------------ |
| errCode | Int | 0 means success, non-0 means failure |
| operate | Int | Operation: 0 is query, 1 is setting, 2 is deleting wallpaper dial|
| location | Int | Set location information|
| hideType | Int | hidden type | 
 | timeColor | Int | time control color | 
 | widgetType | Int | control type | 
 | widgetIconColor | Int | color of the widget icon (1 byte reserved + R (1 byte) + G (1 byte) + B (1 byte)) |
| widgetNumColor | Int | Color of the widget number (1 byte reserved + R (1 byte) + G (1 byte) + B (1 byte)) |
