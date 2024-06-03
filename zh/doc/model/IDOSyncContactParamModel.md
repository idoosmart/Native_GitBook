# `IDOSyncContactParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| operat | Int | 操作<br/>0：无效<br/>1：设置联系人<br/>2：查询联系人<br/>3：设置紧急联系人（需要菜单中`getSupportSetGetEmergencyContactV3`支持）<br/>4：查询紧急联系人（需要菜单中支持`getSupportSetGetEmergencyContactV3`） |
| version | int | 协议版本 （不需要赋值） |
| itemsNum | Int | item 个数 （不需要赋值） |
| items | List<IDOContactItem> | [IDOContactItem](IDOContactItem.md) 集合 |



