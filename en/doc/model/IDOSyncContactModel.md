# `IDOSyncContactModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| errCode | Int | Error code, 0 means success, non-0 means error code |
| operat | Int | Operation<br/>0: Invalid<br/>1: Setting<br/>2: Query<br/>3 :Set emergency contacts (requires menu to support `getSupportSetGetEmergencyContactV3`)<br/>4: Query emergency contacts (requires menu to support `getSupportSetGetEmergencyContactV3`) |
