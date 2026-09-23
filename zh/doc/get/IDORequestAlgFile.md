# 获取设备算法文件

* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：getSupportDeviceOperateAlgFile



### 参数说明：

| 字段名 | 字段类型 | 字段说明                   |
| ------ | -------- | -------------------------- |
| type   | int      | 1：ACC文件<br />2：GPS文件 |



### 示例

Swift

```swift
// 1:ACC文件、2:GPS文件
let tyep = 1
Cmds.rquestAlgFile(type: type).send { rs in
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
// 1:ACC文件、2:GPS文件
final tyep = 1
Cmds.rquestAlgFile(type: type).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```

ArkTs

```ts
// 1:ACC文件、2:GPS文件
let type = 1
Cmds.requestAlgFile(type,(res)=>{
    if(res.success){
    //成功
    // res.value is IDOCmdSetResponseModel
    } else {
    //失败
    }
})
```

