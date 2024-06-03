# `IDOMusicControlParamModel`

| 说明         | 类型    | 属性        |
| ------------ | ------- | ----------- |
| 状态： 0：无效 1：播放 2：暂停 3：停止 | Int | status |
| 当前播放时间 单位：秒 | Int | curTimeSecond |
| 总播放时间 单位：秒 | Int | totalTimeSecond |
| 音乐名称（最大 63 字节） | String | musicName |
| 歌手姓名（最大 63 字节）<br/>如果固件上未启用 v3MusicControl02AddSingerName，则此值不适用 | String | singerName |
