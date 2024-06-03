# 设备信息
### 设备信息模型说明

* IDODeviceInterface

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| deviceMode | Bool | 设备模式 0：运动模式，1：睡眠模式 |
| battStatus | Bool | 电量状态 0:正常, 1:正在充电, 2:充满, 3:电量低 |
| battLevel | Bool | 电量级别 0～100 |
| rebootFlag | Bool | 是否重启 0:未重启 1:重启 |
| bindState | Bool | 绑定状态 0:未绑定 1:已绑定 |
| bindType | Bool | 5:屏幕点击 竖向确认和取消,确认在上边 6:屏幕点击 竖向确认和取消,确认在下边 7:点击(右边一个按键) |
| bindTimeout | Bool | 绑定超时 最长为15秒,0表示不超时 |
| platform | Bool | 60:泰凌微+5340+no nand flash, 70:汇顶+富瑞坤, 80:5340 |
| deviceShapeType | Bool | 设备形状类型 0：无效；1：圆形；2：方形的； 3：椭圆 |
| deviceType | Bool | 设备类型 0：无效；1：手环；2：手表 |
| dialMainVersion | Bool | 自定义表盘主版本 从1开始 0:不支持对应的自定义表盘功能 |
| showBindChoiceUi | Bool | 固件绑定时候显示勾ui界面 0:不需要 1:需要 |
| deviceId | Bool | 设备id |
| firmwareVersion | Bool | 设备固件主版本号 |
| macAddress | Bool | 当前设备mac地址 - 无冒号 |
| macAddressFull | Bool | 当前设备mac地址 - 带冒号 |
| deviceName | Bool | 需要获取最新值可以使用 Cmds.getDeviceName().send(..) 方法 |
| otaMode | Bool | OTA模式 |
| uuid | Bool | UUID ios专用 |
| macAddressBt | Bool | BT macAddress - 带冒号 |
| fwVersion1 | Bool | 固件版本version1 |
| fwVersion2 | Bool | 固件版本version2 |
| fwVersion3 | Bool | 固件版本version3 |
| fwBtFlag | Bool | BT版本生效标志位 0：无效 1：说明固件有对应的BT固件 |
| fwBtVersion1 | Bool | BT的版本version1 |
| fwBtVersion2 | Bool | BT的版本version2 |
| fwBtVersion3 | Bool | BT的版本version3 |
| fwBtMatchVersion1 | Bool | BT的所需要匹配的版本version1 |
| fwBtMatchVersion2 | Bool | BT的所需要匹配的版本version2 |
| fwBtMatchVersion3 | Bool | BT的所需要匹配的版本version3 |

