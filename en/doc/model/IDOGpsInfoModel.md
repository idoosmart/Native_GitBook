# `IDOGpsInfoModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| errCode | Int | GPS Error Code<br/>0 - Normal, non-zero - Exception | 
 | fwVersion | Int | GPS firmware version | 
 | agpsInfo | Int | AGPS (Assisted GPS) validity period | 
 | agpsErrCode | Int | AGPS Error Code|
| utcYear | Int | UTC Year|
| utcMonth | Int | UTC Month|
| utcDay | Int | UTC|
| utcHour | Int | UTC|
| utcMinute | Int | UTC minutes | 
 | startMode | Int | Start mode<br/>1 - Cold start<br/>2 - Warm start |
| gns | Int | Positioning satellite selection<br/>1 - GPS<br/> 2 - GLONASS<br/>3 - GPS + GLONASS |
| fixStartBit | Int | Fixed start bit<br/>Default 0, for debugging |
