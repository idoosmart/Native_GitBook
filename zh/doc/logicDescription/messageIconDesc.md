# 动态消息图标及通知下发流程



### Android流程：

步骤1

### `firstGetAppInfo(force:completion:)`

执行此接口获取所有应用图标、名字、包名 及分配evtType (应用唯一ID,根据包名生成)



步骤2

### `Cmds.setNoticeMessageState(param).send`

此接口支持设置、修改、获取

1.设置下发分配的evtType (应用唯一ID,根据包名生成) ，通知开关是否开启，根据需求控制开关状态

2.每次进入通知页面获取固件的开关状态



步骤3

### `Cmds.setNoticeAppName(param).send`

执行此接口下发通知消息内容，需要带上evtType (应用唯一ID,根据包名生成)、应用APP名称 ，第一次下发固件显示是默认消息图标，后面下发消息就会更新到对应的图标



步骤4

### `androidSendMessageIconToDevice(eventType = type)`

下发通知消息内容时，同时执行此接口，为更新对应事件类型的APP图标给固件



### iOS流程：

步骤1

### `iOSConfig(countryCode:baseUrlPath:appKey:language:)`

如果贵公司后台针对苹果消息图标做了缓存处理，get请求参照此路径和参数 baseurl = "https://cn-user.idoocloud.com/api/ios/lookup/get" + "?bundleId=${packName}&country=${country}"；如果不配置后台缓存处理，则走苹果的接口请求相对会慢一点，但不影响功能使用；国家编码：countryCode 和 当前语言：language 是需要配置的，服务端接口说明参考：[根据报名与国家编码查询ios包信息](../logicDescription/messageIconUrl.md)



步骤2

### `firstGetAppInfo(force:completion:)`

执行此接口获取所有应用图标、名字、包名 及分配evtType (固件分配的ID)，执行此接口需要等待过程，updating这个状态说明在更新中，建议添加loading或者updating为false才进入消息图标列表。



步骤3

### `Cmds.setNoticeMessageState(param).send`

此接口支持设置、修改、获取

1.设置下发分配的evtType (应用唯一ID,根据包名生成) ，通知开关是否开启，根据需求控制开关状态

2.每次进入通知页面获取固件的开关状态

