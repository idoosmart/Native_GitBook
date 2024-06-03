# IDO device notification/control event model description

### `IDODeviceNotificationModel`

Provides the ability to account for notification/control event model members actively requested by the firmware.

| Properties  | Type   | Description                                                  |
| ----------- | ------ | ------------------------------------------------------------ |
| type        | Int    | Monitoring device status <a href="#01">Description</a>       |
| notifyType  | Int    | Notification type <a href="#02">Description</a>              |
| msgId       | Int    | Each message corresponds to an ID                            |
| msgNotice   | Int    | Custom SMS <a href="#03">Description</a>                     |
| errorIndex  | Int    | Error status index <a href="#04">Description</a>             |
| controlEvt  | Int    | Control event type <a href="#05">Description</a>             |
| controlJson | String | Control event return value (only available for some events) [Description](#05) |



### Device status: <a id="01">&nbsp;</a>

| Decimal value | Description                                                  |
| ------------- | ------------------------------------------------------------ |
| 0             | Invalid                                                      |
| 1             | The bracelet has been untied                                 |
| 2             | Heart rate pattern change                                    |
| 3             | Blood oxygen production data has changed                     |
| 4             | Pressure generates data and changes                          |
| 5             | Exit during Alexa recognition process                        |
| 6             | The firmware initiates a factory reset and notifies the app of a pop-up reminder |
| 7             | The app needs to enter the camera interface (TIT01 customization) |
| 8             | SOS event notification (205 Türkiye customized)              |
| 9             | For the alarm clock set by Alexa and the firmware modification, the corresponding notification bit needs to be sent to the app. After receiving it, the app will send the alarm clock command to obtain V3 |
| 10            | The firmware has a deletion schedule reminder, and the app needs to update the corresponding list data |
| 11            | The firmware has modified the corresponding dial style, and notifies the app to obtain it (command_id is 0x33, key is 0x5000) |
| 12            | Firmware notification ios update notification icon and name  |
| 13            | The firmware notifies the app that the icon has been updated, and notifies the app to obtain the updated icon status |
| 14            | The firmware requests to reset the weather, the app receives it and sends the weather data |
| 15            | The number of steps increases by 2000 steps each time, the device requests the app to synchronize data, and the app calls the synchronization interface |
| 16            | Detect the end of sleep, request the app to synchronize sleep data, and the app calls the synchronization interface to synchronize |
| 17            | Firmware three-ring data modification, notify app to update three-ring data |
| 18            | When the firmware is fully charged, a reminder will be sent. After the app receives it, the notification bar will display that the device is fully charged |
| 19            | After finishing exercise, after manually measuring heart rate, after manually measuring blood oxygen, after manually measuring pressure, the device automatically requests synchronization. Check the link status first. If it is not connected, this synchronization will not be executed. It will be judged again after meeting the next automatic synchronization conditions. Initiate synchronization request |
| 20            | The firmware modifies the health switch or notification type, notifies the APP to send and obtain the command update, including:<br/>Continuous heart rate measurement switch<br/>Automatic pressure detection switch<br/>Automatic blood oxygen detection switch<br/>Scientific sleep switch<br/>Night temperature switch<br/>Noise switch<br/>Menstrual cycle switch<br/>Walk reminder switch<br/>Hand wash reminder switch<br/>Drink water reminder switch<br/>Heart rate notification status type<br/>Pressure notification status type<br/>Blood oxygen notification status type<br/>Menstrual cycle notification status type<br/>Fitness guidance notification status type<br/>Reminder notification status type<br/>Respiration rate switch<br/>Body power switch |
| 21            | The firmware pressure value calculation is completed, and the app is notified to obtain the pressure value |
| 22            | The firmware notifies the app that the firmware pressure calibration failed (the firmware exited the measurement interface/detection failed/detection timed out/not worn) |
| 23            | Reserved                                                     |
| 24            | The firmware notifies the app that bt Bluetooth is connected |
| 25            | Firmware notification app bt bluetooth disconnected          |
| 26            | Firmware Bluetooth call starts                               |
| 27            | Firmware Bluetooth call ended                                |
| 28            | The new version of the firmware sends a notification command every 4 minutes and 30 seconds to fix the problem that ios will display offline |
| 29            | Notify the app that movement has started (the same as 26 for intercepting dial transmission) |
| 30            | Notify the app that the movement is over (the same as 27 for intercepting dial transmission) |
| 31            | The firmware restarts and sends a notification to the app (the app needs to obtain the firmware version information after receiving the notification) |
| 32            | When the device is idle (aleax is not used), a notification needs to be reported to the app (the time interval is 1 hour) |
| 33            | The firmware clears the space and notifies the app to continue downloading the watch face file |
| 34            | The firmware notifies the app to end the search for bracelet command (corresponds to 6.3 search for bracelet) |
| 35            | Firmware enters power saving mode to notify app              |
| 36            | Firmware exits power saving mode notification app            |
| ~~37~~        | ~~Firmware notification requests app to issue and set gps hot start parameters (obsolete)~~ |
| 38            | The firmware completes transmitting the original data and notifies the app to obtain the feature vector information |
| 39            | The firmware notifies the app that the firmware blood pressure calibration failed (the firmware exited the measurement interface/detection failed/detection timed out/not worn) |
| 40            | The firmware completes the transmission of raw data and there is no feature vector information, notifying the app that the data collection is completed |
| 41            | v3 health data synchronization single data completion notification (android internal use) |
| 42            | The firmware finishes organizing the gps data space and notifies the app to distribute the gps file |
| 43            | Firmware upgrade EPO.dat file failed, notify the app to deliver the file again |
| 44            | Firmware upgrade EPO.dat file successful                     |
| 45            | Firmware upgrade to GPS failed, notify app to retransmit     |
| 46            | Firmware upgrade GPS successful                              |
| 47            | When initiating exercise, the firmware GPS is abnormal and the app is notified |
| 48            | Firmware Runfeng peripheral information update, notify app to obtain |
| 49            | The firmware notifies the user to cancel the pairing of BLE and the watch, and the app pop-up window processing |
| 50            | The firmware notifies the app that bt pairing is completed   |
| 51            | Firmware sets motion sequencing and notifies the app to obtain motion sequencing information |
| 52            | The firmware all-day step target parameter has changed, notify the app to obtain the all-day step target (0208) |
| 53            | The firmware notifies the app firmware to enter the blood pressure calibration interface |
| 54            | Firmware automatic recognition switch status update, notify app to obtain motion automatic recognition switch status (02EA) |
| 55            | Firmware fast mode switch to slow mode                       |
| 56            | Firmware slow mode switching to fast mode                    |
| 57            | Firmware updates mtu, APP issues to obtain the mtu and update the locally recorded mtu `(the locally recorded mtu size is larger than 20 Bytes and will not be updated)` |
| 58            | The firmware power changes, and the APP downloads the power information |
| 59            | Currently in DFU mode (Sich Platform)                        |
| 60            | Firmware unit switching, notify APP to obtain the unit (0222) |
| 61            | Firmware modification menu list (shortcut list), notify APP to obtain (02A8) |
| 62            | The firmware modifies the local language and notifies the APP to obtain it (0222) |
| 63            | The firmware modifies the current dial and notifies the APP to obtain |
| 64            | Firmware measurement completed, notify APP to obtain the results (0606) |
| 65            | The firmware modifies the smart heart rate mode and notifies the APP to obtain the smart heart rate mode parameters (0263) |
| 66            | The firmware notifies the APP to upgrade the blood pressure model algorithm file (.bpalgbin) |
| 67            |                                                              |
| 68 | The firmware modifies the blood oxygen saturation switch status and notifies the APP to obtain the blood oxygen saturation switch parameters (0244) |
| 69 | The firmware modifies the electronic card content and notifies the APP to obtain the electronic card content |
| 70 | The firmware modifies the content of the morning newspaper and notifies the APP to obtain the content of the morning newspaper |
| 71 | The firmware modifies the voice memo and notifies the APP to obtain the content of the voice memo |



### Notification type: <a id="02">&nbsp;</a>

| value | description | bits |
| ---- | ----------------------------------------------- ------------ | ---- |
| 1 | The alarm has been modified | bit0 |
| 2 | Firmware overheat abnormality alarm | bit1 |
| 4 | The bright screen parameter has been modified (02 b0) | bit2 |
| 8 | The wrist raising parameter has been modified (02 b1) | bit3 |
| 16 | Do Not Disturb mode acquisition (02 30) | bit4 |
| 32 | Mobile phone volume delivery (03 0xE3) (delete), app volume modification, direct delivery | bit5 |



### Custom SMS: <a name="03">&nbsp;</a>

| value | description |
| ---- | ----------------------------------- |
| 0 | None |
| 1 | Custom text message 1 (meeting in progress, contact you later). |
| 2 | Custom SMS 2 |
| 3 | Custom SMS 3 |
| 4 | Custom SMS 4 |
| 5 | Custom SMS 5 |
| .. | ..(and so on to 10) |
| 10 | Custom SMS 10 |



### Error status index: <a id="04">&nbsp;</a>

| Value | Error Type | Comments |
| ---- | ------------ | ------------------ |
| 0 | No errors | |
| 1 | ACC | 1~100 is firmware error |
| 2 | PPG | |
| 3 | TP | |
| 4 | FLASH | |
| 5 | Overheating (PPG) | |
| 6 | Air pressure | |
| 7 | GPS | |
| 8 | Geomagnetism | |
| | | |
| 100 | Open door dog reset | 100~200 reset log code |
| 101 | Power-on reset | |
| 102 | Software misalignment reset | |
| 103 | OTA reset | |
| 104 | User active reset | |
| 105 | Low power shutdown reset | |



### Control events and corresponding event return values: <a id="05">&nbsp;</a>

| Event type | Event number (controlEvt) | Event return value (controlJson) |
| -------------------------- | ------------------ | ---- -------------------------------------------------- ------ |
| Device control app music starts | 551 | - |
| Device control app music pause | 552 | - |
| Device control app music stops | 553 | - |
| Device control app music previous song | 554 | - |
| Device Control App Music Next | 555 | - |
| Device control app to take photos and take single shots | 556 | - |
| Device control app for continuous shooting | 557 | - |
| Device control app volume increase | 558 | - |
| Device control app volume reduction | 559 | - |
| Device control app opens the camera | 560 | - |
| Device control app turns off the camera | 561 | - |
| Device control app to answer calls | 562 | - |
| Device control app rejects calls | 563 | - |
| Device control app music volume percentage | 565 | [Jump to description](../evtControl/IDODeviceControlVolumePercentage.md) |
| Device control app to find mobile phone to start | 570 | - |
| Device control app looking for mobile phone end | 571 | - |
| Device notification app anti-lost activation | 572 | - |
| Device notification app one-click call start | 574 | [Jump to description](../evtControl/IDODeviceControlOnekeySOSStart.md) |
| Device Notification Sensor Data | 575 | - |
| Device notification app operation type | 576 | - |
| Device notification app data update | 577 | - |
| Device request version check | 578 | - |
| Equipment request ota | 579 | - |
| Device notification app SMS message | 580 | [Jump to description](../evtControl/IDODeviceControlFastMsgUpdate.md) |
| Device control app camera | 581 | [Jump to description](../evtControl/IDODeviceControlPhotograph.md) |
| Device notification firmware speaker volume modification | 591 | [Jump to description](../evtControl/IDODeviceControlSpeakerValue.md) |