# Dynamic message icon and notification delivery process 



### Android process: 

Step 1

### `firstGetAppInfo(force:completion:)`

Execute this interface to obtain all application icons, names, packages Name and assign evtType (application unique ID, generated based on package name)



Step 2

### `Cmds.setNoticeMessageState(param).send`

This interface supports setting, modifying, and obtaining

1. Setting Issue the assigned evtType (application unique ID, generated based on the package name), whether the notification switch is turned on, and control the switch status according to needs 

2. Get the switch status of the firmware each time you enter the notification page 



Step 3

### `Cmds.setNoticeAppName(param).send`

To execute this interface to deliver notification message content, you need to bring evtType (application unique ID, generated based on the package name) and application APP name. The first time the firmware is delivered, the display is the default Message icon, and the corresponding icon will be updated when the message is sent later



Step 4

### `androidSendMessageIconToDevice(eventType = type)`

When the notification message content is delivered, this interface is executed at the same time to update the corresponding Event type APP icon to firmware 



### iOS process: 

Step 1

### `iOSConfig(countryCode:baseUrlPath:appKey:language:)`

If your company’s backend does this for Apple message icons For cache processing, the get request refers to this path and parameter baseurl = "https://cn-user.idoocloud.com/api/ios/lookup/get" + "?bundleId=${packName}&country=${country}" ; If you do not configure background cache processing, the request through Apple's interface will be relatively slower, but it will not affect the use of functions; country code: countryCode and current language: language need to be configured, the server interface description reference: [According to registration and country Coding to query ios package information](../logicDescription/messageIconUrl.md)



Step 2

### `firstGetAppInfo(force:completion:)`

Execute this interface to obtain all application icons, names, and package names And assign evtType (ID assigned by firmware). You need to wait for the process to execute this interface. The status of updating indicates that it is being updated. It is recommended to add loading or update to false before entering the message icon list. 



Step 3

### `Cmds.setNoticeMessageState(param).send`

This interface supports setting, modifying, and obtaining 

1. Set the distributed evtType (application unique ID, generated based on the package name ), whether the notification switch is turned on, control the switch status according to needs

2. Get the switch status of the firmware each time you enter the notification page

