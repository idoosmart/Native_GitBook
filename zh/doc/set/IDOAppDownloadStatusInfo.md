# APP 设置下载状态（15.92，0x33/0x88）
* [IDOAppDownloadStatusInfoModel](../model/IDOAppDownloadStatusInfoModel.md)

功能表：`supportAppDownloadStatusInfo`

Swift
```swift
let param = IDOAppDownloadStatusInfoModel(type: 1, status: 1, progress: 0, id: "watch_face_001")
Cmds.appDownloadStatusInfo(param).send { rs in
    if case .success(let obj) = rs {
        // obj.errorCode
    }
}
```

Kotlin
```kotlin
Cmds.appDownloadStatusInfo(IDOAppDownloadStatusInfoModel(type = 1, status = 1, id = "watch_face_001")).send {
    if (it.error.code == 0) {
        // it.res?.errorCode
    }
}
```
