# `IDOSyncContactParamModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| operat | Int | Operation<br/>0: Invalid<br/>1: Set contact<br/>2: Query contact<br/>3: Set emergency contact (requires `getSupportSetGetEmergencyContactV3` support in the menu)< br/>4: Query emergency contacts (needs to support `getSupportSetGetEmergencyContactV3` in the menu) |
| version | int | Protocol version (no assignment required) |
| itemsNum | Int | number of items (no assignment required) |
| items | List<IDOContactItem> | [IDOContactItem](IDOContactItem.md) Collection |



