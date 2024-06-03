# `IDOSyncContactModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| errCode | Int | 错误码，0表示成功，非0表示错误码 |
| operat | Int | 操作<br/>0：无效<br/>1：设置<br/>2：查询<br/>3：设置紧急联系人（需要菜单支持`getSupportSetGetEmergencyContactV3`）<br/>4：查询紧急联系人联系人（需要菜单中支持`getSupportSetGetEmergencyContactV3`） |
