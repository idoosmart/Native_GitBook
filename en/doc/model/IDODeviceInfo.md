# Device information
### Device information model description

* IDODeviceInterface

| Attribute | Type | Description |
| ----------- | ------- | ------------ |
| deviceMode | Bool | Device mode 0: sports mode, 1: sleep mode |
| battStatus | Bool | Battery status 0: normal, 1: charging, 2: full, 3: Low battery |
| battLevel | Bool | Battery level 0～100 |
| rebootFlag | Bool | Whether to restart 0: Not restarted 1: Restart |
| bindState | Bool | Binding status 0: Unbound 1: Bind |
| bindType | Bool | 5: Click vertically on the screen to confirm and cancel, confirmation is at the top 6: Click vertically on the screen to confirm and cancel, confirmation is at the bottom 7: Click (a button on the right) |
| bindTimeout | Bool | Binding The maximum timeout is 15 seconds, 0 means no timeout |
| platform | Bool | 60: Tailing micro+5340+no nand flash, 70: Goodix+Furikun, 80:5340 |
| deviceShapeType | Bool | device Shape type 0: invalid; 1: round; 2: square; 3: ellipse|
| deviceType | Bool | device type 0: invalid; 1: bracelet; 2: watch|
| dialMainVersion | Bool | custom dial The main version starts from 1 0: does not support the corresponding custom watch face function |
| showBindChoiceUi | Bool | displays hook ui interface when firmware is bound 0: not required 1: required |
| deviceId | Bool | device id |
| firmwareVersion | Bool | Device firmware major version number |
| macAddress | Bool | Current device mac address - without colon |
| macAddressFull | Bool | Current device mac address - with colon |
| deviceName | Bool | If you need to get the latest value, you can use Cmds.getDeviceName().send(..) method |
| otaMode | Bool | OTA mode |
| uuid | Bool | UUID ios-specific |
| macAddressBt | Bool | BT macAddress - with colon |
| fwVersion1 | Bool | Firmware Version version1 |
| fwVersion2 | Bool | Firmware version version2 |
| fwVersion3 | Bool | Firmware version3 |
| fwBtFlag | Bool | BT version effective flag bit 0: Invalid 1: Indicates that the firmware has a corresponding BT firmware |
| fwBtVersion1 | Bool | BT version version1 |
| fwBtVersion2 | Bool | BT version version2 |
| fwBtVersion3 | Bool | BT version version3 |
| fwBtMatchVersion1 | Bool | BT version version1 that needs to be matched |
| fwBtMatchVersion2 | Bool | BT's required matching version version2 |
| fwBtMatchVersion3 | Bool | BT's required matching version version3 |

