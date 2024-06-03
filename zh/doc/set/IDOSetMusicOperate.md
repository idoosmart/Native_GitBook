# 操作歌曲或者文件夹
* [IDOMusicOpearteParamModel](../model/IDOMusicOpearteParamModel.md)
* [IDOMusicOperateModel](../model/IDOMusicOperateModel.md)



### 示例

Swift
```swift
let param = IDOMusicOpearteParamModel(...)

Cmds.setMusicOperate(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOMusicOperateModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOMusicOpearteParamModel(...)

Cmds.setMusicOperate(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOMusicOperateModel
    }else {
        // 失败
    }
}
```
