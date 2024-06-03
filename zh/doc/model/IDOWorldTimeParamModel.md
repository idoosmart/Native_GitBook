# `IDOWorldTimeParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| id | Int | 详细ID，唯一性 |
| minOffset | Int | 从当前时间到 UTC 0 的分钟偏移量 |
| cityName | String | 城市名称，最多 59 字节 |
| longitudeFlag | Int | 1：东经 2：西经 |
| longitude | Int | 经度，乘以 100，保留 2 位小数 |
| latitudeFlag | Int | 1：北纬 2：南纬 |
| latitude | Int | 纬度，乘以 100，保留 2 位小数 |
