# `IDORunPlanParamModel`

| Property | Type | Description |
| ----------- | ------- | ------------ |
| verison | Int | Protocol library version number |
| operate | Int | Operation<br/>1: Start plan<br/>2: Send plan data<br/>3: End plan<br/>4: Query running plan |
| type | Int | Plan type<br/>1: 3-kilometer running plan<br/>2: 5-kilometer running plan<br/>3: 10-kilometer running plan<br/>4: Half-marathon training ( Phase 2)<br/>5: Marathon training (Phase 2) |
| dayNum | Int | Planned days<br/>Applicable when running for 2 days |
| year | Int | Exercise plan start time |
| month | Int | Exercise plan start time |
| day | Int | Exercise plan start time |
| hour | Int | Exercise plan start time |
| min | Int | Exercise plan start time |
| sec | Int | Exercise plan start time |
| items | List<IDOGpsInfoModelItem> | [IDOGpsInfoModelItem](IDOGpsInfoModelItem.md) collection |
