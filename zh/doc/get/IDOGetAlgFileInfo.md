# 获取固件算法文件信息（ACC/GPS）

* [IDOAlgFileModel](../model/IDOAlgFileModel.md)

功能表：getSupportDeviceOperateAlgFile

### 示例

Swift

```swift
Cmds.getAlgFileInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOAlgFileModel
    }else {
        // 失败
    }
}
```

Kotlin

```kotlin
Cmds.getAlgFileInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOAlgFileModel
    }else {
        // 失败
    }
}
```

ArkTs

```ts
Cmds.getAlgFileInfo((res)=>{
      if(res.success){
        //成功
        // res.value is IDOAlgFileModel
      } else {
        //失败
      }
    })
```