# `IDONoticeMesaageParamModel`

| Property| Type| Description|
| ----------- | ------- | ------------ |
| verison | Int | Protocol library version number |
| osPlatform | Int | System 0: invalid, 1: Android, 2: iOS |
| evtType | Int | Current mode 0: invalid, 1: message reminder |
| notifyType | Int | Maximum value of message enumeration type: 20000 |
| msgID | Int | Message ID is only valid when evt_type is message reminder and msg_ID is not 0 |
| appItemsLen | Int | Country/region number and language details |
| contact | String | Contact name (maximum 63 bytes) |
| phoneNumber | String | Phone number (maximum 31 bytes) |
| msgData | String | Message content (maximum 249 bytes) |
