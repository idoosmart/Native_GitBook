# `IDOStatusNotification`

| Properties|Type|Description|
| ----------------------------------| ------ | ----------------------------------------------------------------- |
| protocolConnectCompleted | Int | The protocol library has completed the Bluetooth library bridging, and the cache data has been initialized |
| functionTableUpdateCompleted | Int | The function table acquisition is completed|
 | deviceInfoUpdateCompleted | Int | Device information acquisition completed | 
 | deviceInfoFwVersionCompleted | Int | Level 3 version acquisition completed | 
 | unbindOnBindStateError | Int | Binding status is abnormal and needs to be unbound (triggered when local binding status and device information are inconsistent) |
 | fastSyncCompleted | Int | Fast configuration completed |
| fastSyncFailed | String | Fast configuration failed, the business layer needs to re-trigger fast configuration |
| deviceInfoBtAddressUpdateCompleted | String | BT MacAddress acquisition completed |
| macAddressError | String | macAddress obtained by fast configuration This error is reported when it is inconsistent with the one passed in by markConnectedDevice|
| syncHealthDataIng | String | Synchronizing health data|
| syncHealthDataCompleted | String | Synchronizing health data completed|

