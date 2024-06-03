# `IDOBpCalControlModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| errorCode | Int | 错误代码：0 表示成功，非 0 表示失败 |
| operate | Int | 操作<br/>0：无效<br/>1：开始血压校准<br/>2：停止血压校准<br/>3：获取特征向量 |
| sbpPpgFeatureNum | Int | 高血压PPG特征向量个数<br/>operate=3时有效 |
| dbpPpgFeatureNum | Int | 低血压PPG特征向量个数<br/>operate=3时有效 |
| sbpPpgFeatureItems | List<Int> | 高血压PPG特征向量集合 |
| dbpPpgFeatureItems | List<Int> | 低血压PPG特征向量集合 |
