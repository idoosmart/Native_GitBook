# 获取BT连接手机型号


功能表：getSupportGetV3DeviceBtConnectPhoneModel

### 示例

Swift
```swift
Cmds.getBtConnectPhoneModel().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is String
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getBtConnectPhoneModel().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is String
    }else {
        // 失败
    }
}
```
