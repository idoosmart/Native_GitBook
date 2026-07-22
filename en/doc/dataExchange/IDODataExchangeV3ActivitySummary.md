# Get V3 Activity Summary (15.20)

**Protocol**: 15.20, event ID **5022**.  
**Module**: **Activity data exchange** — use `IDOSDK.dataExchange`, not via `IDOSDK.cmd` / `Cmds` get APIs.

**Function table**: `syncV3ActivityExchangeData`.

## API

| Platform | Recommended |
|----------|-------------|
| iOS | `sdk.dataExchange.getLastActivityData()` |
| Android | `sdk.dataExchange.getLastActivityData()` |

Receive `IDOAppActivityDataV3ExchangeModel` via `addExchange` → `appListenAppExec` / `appActivityDataReply` (see [IDODataExchange](IDODataExchange.md)).

## Notes

- No request payload; response maps to [IDOAppActivityDataV3ExchangeModel](IDOAppActivityDataV3ExchangeModel.md).
- Differs from **15.103 full snapshot** (5114): 5022 is in-session / post-session summary; device does not return that session again after exchange completes.
- Version-gated fields and scaling: [IDOAppActivityDataV3ExchangeModel](IDOAppActivityDataV3ExchangeModel.md); authoritative spec: `protocol_c_doc/v3/15.20_多运动数据交互_获取运动小结_0x33_0x13.md` (§5–§7, §6.3 JSON sample).

## Example

Swift

```swift
sdk.dataExchange.addExchange(delegate)
sdk.dataExchange.getLastActivityData()
// Handle IDOAppActivityDataV3ExchangeModel in appListenAppExec
```

Kotlin

```kotlin
sdk.dataExchange.addExchange(delegate)
sdk.dataExchange.getLastActivityData()
// Handle IDOBleReplyType.appActivityDataReply
```
