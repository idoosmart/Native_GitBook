# `IDOWeatherV3ParamModel`

| Property | Type | Description |
| ------------------------ | ------ | ------------------------------------------------------------ |
| month | int | Month of the latest server synchronization |
| day | int | Day of the last server synchronization |
| hour | int | Hour of the last server synchronization |
| min | int | Minute of the last server synchronization |
| sec | int | Second of the last server synchronization |
| week | Int | Day of the week<br/>bit0: Monday<br/>bit1: Tuesday, and so on until Sunday |
| weatherType | Int | Weather type<br/>0: Other<br/>1: Sunny<br/>2: Cloudy<br/>3: Overcast<br/>4: Rain<br/>5: Heavy rain<br/>6: Thunderstorm<br/>7: Snow<br/>8: Sleet<br/>9: Typhoon<br/>10: Sandstorm<br/>11: Clear at night<br/>12: Cloudy at night<br/> 13: Hot<br/>14: Cold<br/>15: Breeze<br/>16: Strong wind<br/>17: Haze<br/>18: Showers<br/>19: Cloudy to sunny<br/>48: Thunder<br/>49: Hail<br/>50: Sand<br/>51: Tornado (realme custom weather type idw02)<br/> |
| todayTmp | Int | Current temperature (Celsius)<br/>For negative temperatures, add 100 to the temperature and transmit |
| todayMaxTemp | Int | Maximum temperature (Celsius)<br/>For negative temperatures, add 100 to the temperature and transmit |
| todayMinTemp | Int | Minimum temperature (Celsius)<br/>For negative temperatures, add 100 to the temperature and transmit |
| cityName | String | City name<br/>Maximum 74 bytes |
| airQuality | Int | Air quality<br/>Multiply by 10 for transmission |
| precipitationProbability | Int | Precipitation probability<br/>0-100% |
| humidity | int | Humidity |
| todayUvIntensity | int | Ultraviolet intensity<br />Enlarge the transmission by 10 times |
| windSpeed ​​| int | Wind speed |
| sunriseHour | int | Sunrise time hours |
| sunriseMin | int | Sunrise time minutes |
| sunsetHour | int | Sunrise time hours |
| sunsetMin | int | Sunrise time minutes |
| sunriseItemNum | Int | Number of sunrise and sunset time details<br/>Currently the maximum number of days is set to 7 |
| airGradeItem | String | Air quality grade content |
| hoursWeatherItems | Collection | Weather data collection for the next 48 hours (optional)<br /> [IDOHoursWeatherItem](#IDOHoursWeatherItem) |
| futureItems | Collection | Weather data for the next seven days (optional)<br />[IDOFutureItem](#IDOFutureItem) |
| sunriseItem | Collection | Details of sunrise and sunset times (optional)<br />[IDOSunriseItem ](#IDOSunriseItem) |

# `IDOHoursWeatherItem`<a name="IDOHoursWeatherItem"> </a>

| Attribute | Type | Description |
| ----------- | ---- | -------------------------------- |
| weatherType | int | Weather type |
| temperature | int | Temperature<br /> Temperature plus 100 to transmit |
| probability | int | Probability of temperature occurrence<br /> 0-100 percentage |

# `IDOFutureItem`<a name="IDOFutureItem"> </a>

| Attribute | Type | Description |
| ----------- | ---- | --------------------------- |
| weatherType | int | Weather type |
| maxTemp | int | Maximum temperature<br /> Temperature plus 100 to transmit |
| minTemp | int | Minimum temperature<br /> Temperature plus 100 to transmit |

# `IDOSunriseItem`<a name="IDOSunriseItem"> </a>

| Property | Type | Description |
| ----------- | ---- | ------------------------------- |
| sunriseHour | int | Sunrise time hours<br />Invalid if version is 1 |
| sunriseMin | int | Sunrise time minutes<br />Invalid if version is 1 |
| sunsetHour | int | Sunset time hours<br />Invalid if version is 1 |
| sunsetMin | int | Sunset time minutes<br />Invalid if version is 1 |