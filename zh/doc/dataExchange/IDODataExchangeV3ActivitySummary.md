# 获取 V3 运动小结（15.20）

模块**：多运动**数据交换**，请使用 `IDOSDK.dataExchange。

## 接口

| 平台 | 推荐 API |
|------|----------|
| iOS | `sdk.dataExchange.getLastActivityData()` |
| Android | `sdk.dataExchange.getLastActivityData()` |

结果通过 `addExchange` 注册的代理，在 `appListenAppExec` 中收到 `IDOAppActivityDataV3ExchangeModel` / `IDOBleReplyType.appActivityDataReply`（见 [IDODataExchange](IDODataExchange.md)）。

## 说明

- 请求无业务参数；设备返回 JSON 解析为 [IDOAppActivityDataV3ExchangeModel](IDOAppActivityDataV3ExchangeModel.md)。
- 与 **15.103 全量快照** 不同：5022 用于交互中约每 40s 或结束后的当次小结；交互完成后该次数据设备不再返回。
- 字段含义与版本门控见 [IDOAppActivityDataV3ExchangeModel](IDOAppActivityDataV3ExchangeModel.md)；协议权威定义见 `protocol_c_doc/v3/15.20_多运动数据交互_获取运动小结_0x33_0x13.md`（§5~§7、§6.3 JSON 样例）。

## 示例

Swift

```swift
sdk.dataExchange.addExchange(delegate)

// 触发获取小结
sdk.dataExchange.getLastActivityData()

// 在 IDOExchangeDataOCDelegate.appListenAppExec 中：
// if model is IDOAppActivityDataV3ExchangeModel { ... }
```

Kotlin

```kotlin
sdk.dataExchange.addExchange(delegate)

sdk.dataExchange.getLastActivityData()

// 在 IDOExchangeDataDelegate.appListenAppExec 中：
// IDOBleReplyType.appActivityDataReply -> model: IDOAppActivityDataV3ExchangeModel
```
