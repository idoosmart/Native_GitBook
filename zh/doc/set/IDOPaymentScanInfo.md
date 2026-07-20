# 支付码扫码信息下发（15.91，0x33/0x87）
* [IDOPaymentScanInfoModel](../model/IDOPaymentScanInfoModel.md)

功能表：`supportPaymentScanInfoSend`

Swift
```swift
let param = IDOPaymentScanInfoModel(paymentStatus: 3, userId: "user_123", watchId: "dial_001")
Cmds.paymentScanInfo(param).send { rs in
    if case .success(let obj) = rs {
        // obj.errorCode
    }
}
```

Kotlin
```kotlin
Cmds.paymentScanInfo(IDOPaymentScanInfoModel(paymentStatus = 3, userId = "user_123", watchId = "dial_001")).send {
    if (it.error.code == 0) {
        // it.res?.errorCode
    }
}
```
