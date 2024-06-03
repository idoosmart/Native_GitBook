# `IDOWallpaperDialReplyV3ParamModel`

| Property| Type| Description|
| ----------- | ------- | ------------ |
| operate | Int | Operation: 0 is query, 1 is setting, 2 is deleting wallpaper dial |
| location | Int | Set location information, refer to the 9-grid layout |
| hideType | Int | Hide type: 0 means display all, 1 Indicates hidden sub-controls (icons and numbers) |
| timeColor | Int | time control color (reserved 1 byte + R (1 byte) + G (1 byte) + B (1 byte)) | 
 | widgetType | Int | Control type: 1 for week/date, 2 for steps, 3 for distance, 4 for calories, 5 for heart rate, 6 for battery |
| widgetIconColor | Int | Color of the widget icon (1 byte reserved + R (1 byte) + G (1 byte) + B (1 byte)) |
| widgetNumColor | Int | Color of the widget number (1 byte reserved + R (1 byte) ) + G (1 byte) + B (1 byte)) |
