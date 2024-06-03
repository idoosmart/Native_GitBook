# `IDOFlashBinInfoModel`

| Property | Type | Description |
| ----------- | ------- | ------------ |
| status | Int | Status: 0 - normal, 1 - invalid font, checksum error, 2 - version mismatch |
| version | Int | protocol version (no assignment required) |
| matchVersion | Int | font version<br />private let version: Int<br/>The matching version required by the firmware|
| checkCode | Int | Font library check code|
