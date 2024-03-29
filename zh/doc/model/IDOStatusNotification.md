# `IDOStatusNotification`

| 属性                               | 类型   | 说明                                                         |
| ---------------------------------- | ------ | ------------------------------------------------------------ |
| protocolConnectCompleted           | Int    | 协议库完成蓝牙库桥接，此时缓存数据已经初始化                 |
| functionTableUpdateCompleted       | Int    | 功能表获取完成                                               |
| deviceInfoUpdateCompleted          | Int    | 设备信息获取完成                                             |
| deviceInfoFwVersionCompleted       | Int    | 三级版本获取完成                                             |
| unbindOnBindStateError             | Int    | 绑定状态异常，需要解绑 (本地绑定状态和设备信息不一致时触发)  |
| fastSyncCompleted                  | Int    | 快速配置完成                                                 |
| fastSyncFailed                     | String | 快速配置失败，需业务层重新触发快速配置                       |
| deviceInfoBtAddressUpdateCompleted | String | BT MacAddress获取完成                                        |
| macAddressError                    | String | 快速配置获取到的macAddress和markConnectedDevice传入的不一致时上报此错误 |
| syncHealthDataIng                  | String | 同步健康数据中                                               |
| syncHealthDataCompleted            | String | 同步健康数据完成                                             |

