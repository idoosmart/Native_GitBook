# 查询需设置左右手佩戴类型的运动类型列表（V3 15.104）
* [IDOSportTypesRequiringWristSideSettingModel](../model/IDOSportTypesRequiringWristSideSettingModel.md)

功能表：`supportGetSportTypesRequiringWristSideSetting`

Swift
```swift
Cmds.getSportTypesRequiringWristSideSetting().send { rs in
    if case .success(let obj) = rs {
        // obj.sportTypes
    }
}
```

Kotlin
```kotlin
Cmds.getSportTypesRequiringWristSideSetting().send {
    if (it.error.code == 0) {
        // it.res?.sportTypes
    }
}
```
