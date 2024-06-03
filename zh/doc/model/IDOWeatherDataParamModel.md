# `IDOWeatherDataParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| type | Int | 天气类型<br/>0x00 其他<br/>0x01 晴<br/>0x02 阴<br/>0x03 阴<br/>0x04 雨<br/>0x05 大雨<br/>0x06 雷雨<br/>0x07雪<br/>0x08雨夹雪<br/>0x09台风<br/>0x0A沙尘暴<br/>0x0B晴夜<br/>0x0C阴夜<br/>0x0D炎热<br/>0x0E寒冷<br/>0x0F微风<br/>0x10大风<br/>0x11阴霾<br/>0x12阵雨<br/>0x13阴转晴<br/>0x30雷<br/>0x31冰雹<br/>0x32沙尘<br/ >0x33 龙卷风<br/> |
| temp | Int | 当前温度 |
| maxTemp | Int | 当日最高气温 |
| minTemp | Int | 当日最低气温 |
| humidity | Int | 当前湿度 |
| uvIntensity | Int | 当前紫外线强度 |
| aqi | Int | 当前空气质量指数（AQI） |
| future | [[IDOWeatherDataFuture](IDOWeatherDataFuture.md)] | 未来三天的天气情况 |

