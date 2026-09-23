# 设置运动城市名称
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### 参数说明：

| 字段名   | 字段类型 | 字段说明                  |
| -------- | -------- | ------------------------- |
| cityName | String   | 城市名称<br/>最大74个字节 |



### 示例

Swift
```swift
Cmds.setLongCityNameV3(cityName: "sz").send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.setLongCityNameV3(cityName: "sz").send {
    if (it.error.code == 0) {
        // 成功
    }else {
        // 失败
    }
}
```

ArkTs

```ts
let cityName = "xxxx"
Cmds.setLongCityNameV3(cityName,(res)=>{
    if(res.success){
        //成功
        //it.value is IDOCmdSetResponseModel
    } else {
        //失败
    }
})
```
