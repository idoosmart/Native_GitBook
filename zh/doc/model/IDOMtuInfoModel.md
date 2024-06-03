# `IDOMtuInfoModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| status | Int | 0：数据有效<br/>1：数据无效，请稍等片刻再试。如果数据无效，MTU 为 20。 |
| rxMtu | Int | 应用程序接收数据的 MTU |
| txMtu | Int | 应用程序发送数据的 MTU |
| phySpeed | Int | 物理层速度<br/>0：无效<br/>1000：1M<br/>2000：2M<br/>512：512K |
| dleLength | Int | DLE长度<br/>0：不支持 |
