# 来电/消息提醒

设备来电提醒、消息提醒



## 方法

### `setV2CallEvt(contactText:phoneNumber:completion:)`

v2发送来电提醒以及来电电话号码和来电联系人(部分设备实现)

- Parameters:
  - contactText: 联系人名称
  - phoneNumber: 号码
- Returns: 是否成功

### `setV2NoticeEvt(type:contactText:phoneNumber:dataText:completion:)`

v2发送信息提醒以及信息内容(部分设备实现)

- Parameters:
  - type: 信息类型
  - contactText: 通知内容
  - phoneNumber: 号码
  - dataText: 消息内容
- Returns: 是否成功

### `stopV2CallEvt(completion:)`

v2发送来电提醒状态为来电已接, 告诉设备停止提醒用户(部分设备实现)

- Returns: 是否成功

### `missedV2MissedCallEvt(completion:)`

v2发送来电提醒状态为来电已拒, 告诉设备停止提醒用户(部分设备实现)

- Returns: 是否成功




## 示例

Swift:

```swift
// 发送来电提醒以及来电电话号码和来电联系人
sdk.cmd.setV2CallEvt(contactText: "xx", phoneNumber: "33333") { rs in
   if (rs) {
     // 成功
   } else {
     // 失败
   }
}


// 通知电话挂断
sdk.cmd.stopV2CallEvt { rs in

}
```

Kotlin:

```kotlin
// 发送来电提醒以及来电电话号码和来电联系人
sdk.cmd.setV2CallEvt("xxx", "3333") {
    if (it) {
        // 成功
    }else {
        // 失败
    }
}


// 通知电话挂断
sdk.cmd.stopV2CallEvt {

}
```

