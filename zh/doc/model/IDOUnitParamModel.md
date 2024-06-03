# `IDOUnitParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| distUnit | Int | 距离单位：<br/>0：无效<br/>1：公里（公制）<br/>2：英里（英制） |
| weightUnit | Int | 重量单位：<br/>0：无效<br/>1：kg<br/>2：lb |
| temp | Int | 温度单位：<br/>0：无效<br/>1：℃<br/>2：℉ |
| stride | Int | 步行步幅：<br/>0：无效<br/>0：厘米 |
| language | Int | [语言](../IDOLanguageCode.md) |
| is12HourFormat | Int | 时间格式：<br/>0：无效<br/>1：24小时格式<br/>2：12小时格式 |
| strideRun | Int | 跑步步幅：<br/>0：无效<br/>1：cm<br/>男性默认值：90cm |
| strideGpsCal | Int | 通过 GPS 步幅校准开/关：<br/>0：无效<br/>1：开<br/>2：关 |
| weekStartDate | Int | 一周的开始日期：<br/>0：星期一<br/>1：星期日<br/>3：星期六 |
| calorieUnit | Int | 卡路里单位设置：<br/>0：无效<br/>1：默认kCal<br/>2：Cal<br/>3：kJ |
| swimPoolUnit | Int | 泳池单位设置：<br/>0：无效<br/>1：默认米<br/>2：码 |
| cyclingUnit | Int | 骑行单位：<br/>0：无效<br/>1：公里<br/>2：英里 |
| walkingRunningUnit | Int | 步行或跑步单位（公里/英里）设置：<br/>0：无效<br/>1：公里<br/>2：英里<br/>需要设备固件 `setSupportWalkRunUnit` 支持 |

