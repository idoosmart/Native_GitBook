# 设置壁纸表盘列表
* [IDOWallpaperDialReplyV3ParamModel](../model/IDOWallpaperDialReplyV3ParamModel.md)
* [IDOWallpaperDialReplyV3Model](../model/IDOWallpaperDialReplyV3Model.md)

功能表：setWatchPhotoPositionMove

### 示例

Swift
```swift
let param = IDOWallpaperDialReplyV3ParamModel(...)

Cmds.setWallpaperDialReply(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOWallpaperDialReplyV3Model
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOWallpaperDialReplyV3ParamModel(...)

Cmds.setWallpaperDialReply(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOWallpaperDialReplyV3Model
    }else {
        // 失败
    }
}
```

ArkTs

```ts
let param = new IDOWallpaperDialReplyV3ParamModel(...)

Cmds.setWallpaperDialReply(param,(res)=>{
  if(res.success){
      //成功
      //it.value is IDOCmdSetResponseModel
  } else {
      //失败
  }
})
```
