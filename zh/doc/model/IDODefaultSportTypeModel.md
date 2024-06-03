# `IDODefaultSportTypeModel`

| 属性           | 类型                                    | 说明                               |
| -------------- | --------------------------------------- | ---------------------------------- |
| defaultShowNum | Int                                     | 默认显示的数量                     |
| minShowNum     | Int                                     | 最小支持的数量                     |
| maxShowNum     | Int                                     | 最大支持的数量                     |
| isSupportsSort | Int                                     | 是否支持默认排序 0 不支持 ，1 支持 |
| sportTypes     | [[IDOSportTypeItem](#IDOSportTypeItem)] | 运动类型列表集合 type的集合        |



# `IDOSportTypeItem`<a name="IDOSportTypeItem"> </a>

| 属性 | 类型                                    | 说明           |
| ---- | --------------------------------------- | -------------- |
| type | [IDOSportType](../enum/IDOSportType.md) | 默认显示的数量 |



