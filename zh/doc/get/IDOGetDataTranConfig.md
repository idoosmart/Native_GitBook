# 文件传输配置获取（GET:0x02/0xE9）
* [IDODataTranConfigModel](../model/IDODataTranConfigModel.md)

功能表：`supportV3NotifyIconAdaptive`

Swift
```swift
let param = IDODataTranConfigParamModel(type: 1, sportType: 1)
Cmds.getDataTranConfig(param).send { rs in
    if case .success(let obj) = rs {
        // obj.iconWidth / obj.blockSize
    }
}
```

Kotlin
```kotlin
Cmds.getDataTranConfig(IDODataTranConfigParamModel(type = 1, sportType = 1)).send {
    if (it.error.code == 0) {
        // it.res?.iconWidth
    }
}
```
