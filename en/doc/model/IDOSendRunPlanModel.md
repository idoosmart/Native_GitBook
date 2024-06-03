# `IDOSendRunPlanModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| errCode | Int | 00: Success, 01: Failure, 02: Another run plan is enabled|
| version | Int | Protocol library version number|
| operate | Int | Operation:<br/>1: Start plan<br />2: Send plan data<br/>3: End plan<br/>4: Query running plan |
| type | Int | Plan type:<br/>1: 3km running plan<br/>2: 5km running plan<br/>3: 10km running plan<br/>4: Half marathon training (second stage)<br/>5: Marathon training (second stage) |
| year | Int | plan Implementation start time year | 
 | month | Int | Planned implementation start time month | 
 | day | Int | Planned implementation start time day | 
 | hour | Int | Planned implementation start time hour | 
 | min | Int | Planned implementation start Time minutes|
| sec | Int | Plan implementation start time seconds|
