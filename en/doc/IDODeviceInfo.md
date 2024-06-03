# Device Information



## Methods

### `refreshDeviceInfo(forced:completion:)`

Refresh device information

- Parameters:
   - forced: forced refresh

### `refreshFirmwareVersion(forced:completion:)`

Refresh device level 3 version

- Parameters:
   - forced: forced refresh



### Device information model description

* IDODeviceInterface

| Properties | Type | Description |
| ----------- | ------- | ----------- |
| deviceMode | Bool | Device mode 0: sports mode, 1: sleep mode |
| battStatus | Bool | Battery status 0: normal, 1: charging, 2: full, 3: low battery |
| battLevel | Bool | Battery level 0～100 |
| rebootFlag | Bool | Whether to reboot 0: No reboot 1: Reboot |
| bindState | Bool | Binding status 0: Unbound 1: Bound |
| bindType | Bool | 5: Screen click Vertical confirmation and cancellation, confirmation is at the top 6: Screen click Vertical confirmation and cancellation, confirmation is at the bottom 7: Click (a button on the right) |
| bindTimeout | Bool | Binding timeout, up to 15 seconds, 0 means no timeout |
| platform | Bool | 60: Tailingwei+5340+no nand flash, 70: Goodix+Furuikun, 80:5340 |
| deviceShapeType | Bool | Device shape type 0: invalid; 1: circular; 2: square; 3: ellipse |
| deviceType | Bool | Device type 0: invalid; 1: bracelet; 2: watch |
| dialMainVersion | Bool | Custom dial main version starts from 1 0: The corresponding custom dial function is not supported |
| showBindChoiceUi | Bool | Display hook ui interface when firmware is bound 0: Not required 1: Required |
| deviceId | Bool | device id |
| firmwareVersion | Bool | Device firmware major version number |
| macAddress | Bool | Current device mac address - no colon |
| macAddressFull | Bool | Current device mac address - with colon |
| deviceName | Bool | To get the latest value, you can use the Cmds.getDeviceName().send(..) method |
| otaMode | Bool | OTA mode |
| uuid | Bool | UUID ios-specific |
| macAddressBt | Bool | BT macAddress - with colon |
| sn | Bool | Device SN |
| btName | Bool | BtName |
| gpsPlatform | Bool | GPS chip platform 0: Invalid 1: Sony 2: Roda Airoh 3: Core and object icoe |
| fwVersion1 | Bool | Firmware version version1 |
| fwVersion2 | Bool | Firmware version version2 |
| fwVersion3 | Bool | Firmware version version3 |
| fwBtFlag | Bool | BT version effective flag 0: Invalid 1: Indicates that the firmware has corresponding BT firmware |
| fwBtVersion1 | Bool | BT version version1 |
| fwBtVersion2 | Bool | BT version version2 |
| fwBtVersion3 | Bool | BT version version3 |
| fwBtMatchVersion1 | Bool | The version of BT that needs to be matched version1 |
| fwBtMatchVersion2 | Bool | The version of BT that needs to be matched version2 |
| fwBtMatchVersion3 | Bool | The version of BT that needs to be matched version3 |