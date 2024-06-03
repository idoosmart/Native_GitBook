# `IDOFlashBinInfoModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| status | Int | 状态：0 - 正常，1 - 字体无效，校验和错误，2 - 版本不匹配 |
| version | Int | 协议版本 （不需要赋值） |
| matchVersion | Int | 字库版本<br/>private let version: Int<br/>固件需要的匹配版本 |
| checkCode | Int | 字体库校验码 |
