# `IDOBpCalControlModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| errorCode | Int | Error code: 0 means success, non-0 means failure |
| operate | Int | Operation<br/>0: Invalid<br/>1: Start blood pressure calibration<br/>2: Stop blood pressure calibration<br/>3: Get the feature vector |
| sbpPpgFeatureNum | Int | The number of high blood pressure PPG feature vectors<br/>Valid when operate=3 |
| dbpPpgFeatureNum | Int | The number of low blood pressure PPG feature vectors<br/ Valid when />operate=3 |
| sbpPpgFeatureItems | List<Int> | High blood pressure PPG feature vector set |
| dbpPpgFeatureItems | List<Int> | Hypotension PPG feature vector set |
