# Set wallpaper dial list
* [IDOWallpaperDialReplyV3ParamModel](../model/IDOWallpaperDialReplyV3ParamModel.md)
* [IDOWallpaperDialReplyV3Model](../model/IDOWallpaperDialReplyV3Model.md)

Function table: setWatchPhotoPositionMo ve

### Example

Swift 
```swift
let param = IDOWallpaperDialReplyV3ParamModel(...)

Cmds.setWallpaperDialReply(param).send { rs in
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOWallpaperDial ReplyV3Model 
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOWallpaperDialReplyV3ParamModel(...)

Cmds.setWallpaperDialReply (param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOWallpaperDialReplyV3Model
 }else {
 // Failure
 }
}
```
