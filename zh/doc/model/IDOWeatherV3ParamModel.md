# `IDOWeatherV3ParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| month                     | int      | 服务器最新一次同步的月                                       |
| day                       | int      | 服务器最后一次同步的日                                       |
| hour                      | int      | 服务器最后一次同步的时                                       |
| min                       | int      | 服务器最后一次同步的分                                       |
| sec                       | int      | 服务器最后一次同步的秒                                       |
| week | Int | 星期几<br/>bit0：星期一<br/>bit1：星期二，依此类推直到星期日 |
| weatherType | Int | 天气类型<br/>0：其他<br/>1：晴<br/>2：多云<br/>3：阴<br/>4：雨<br/>5：大雨<br/>6 ：雷暴<br/>7：雪<br/>8：雨夹雪<br/>9：台风<br/>10：沙尘暴<br/>11：夜间晴<br/>12：夜间多云<br/> 13：热<br/>14：冷<br/>15：微风<br/>16：大风<br/>17：阴霾<br/>18：阵雨<br/>19：阴转晴< br/>48：雷声<br/>49：冰雹<br/>50：风沙<br/>51：龙卷风（realme自定义天气类型idw02）<br/> |
| todayTmp | Int | 当前温度（摄氏度）<br/>对于负温度，将温度加 100 并传输 |
| todayMaxTemp | Int | 最高温度（摄氏度）<br/>对于负温度，将温度加 100 并传输 |
| todayMinTemp | Int | 最低温度（摄氏度）<br/>对于负温度，将温度加 100 并传输 |
| cityName | String | 城市名称<br/>最多 74 字节 |
| airQuality | Int | 空气质量<br/>乘以10进行传输 |
| precipitationProbability | Int | 降水概率<br/>0-100% |
| humidity                  | int      | 湿度                                                         |
| todayUvIntensity | int      | 紫外线强度<br />扩大10倍传输                                 |
| windSpeed       | int      | 风速                                                         |
| sunriseHour              | int      | 日出时间 时                              |
| sunriseMin               | int      | 日出时间 分                              |
| sunsetHour               | int      | 日出时间 时                              |
| sunsetMin               | int      | 日出时间 分                              |
| sunriseItemNum | Int | 日出日落时间详情数<br/>目前最大天数设置为7 |
|airGradeItem|String|空气质量等级内容|
| hoursWeatherItems | 集合 | 未来48小时的天气数据集合（可选）<br /> [IDOHoursWeatherItem](#IDOHoursWeatherItem) |
| futureItems | 集合 | 未来七天的天气数据（可选）<br />[IDOFutureItem](#IDOFutureItem) |
| sunriseItem | 集合 | 日出日落时间详情（可选）<br />[IDOSunriseItem ](#IDOSunriseItem) |



# `IDOHoursWeatherItem`<a name="IDOHoursWeatherItem"> </a>

| 属性        | 类型 | 说明                             |
| ----------- | ---- | -------------------------------- |
| weatherType | int  | 天气类型                         |
| temperature | int  | 温度<br />温度加100传输          |
| probability | int  | 温度出现的概率<br />0-100 百分比 |

# `IDOFutureItem`<a name="IDOFutureItem"> </a>

| 属性        | 类型 | 说明                        |
| ----------- | ---- | --------------------------- |
| weatherType | int  | 天气类型                    |
| maxTemp     | int  | 最大温度<br />温度加100传输 |
| minTemp     | int  | 最小温度<br />温度加100传输 |

# `IDOSunriseItem`<a name="IDOSunriseItem"> </a>

| 属性        | 类型 | 说明                            |
| ----------- | ---- | ------------------------------- |
| sunriseHour | int  | 日出时间 时<br />version为1无效 |
| sunriseMin  | int  | 日出时间 分<br />version为1无效 |
| sunsetHour  | int  | 日落时间 时<br />version为1无效 |
| sunsetMin   | int  | 日落时间 分<br />version为1无效 |

