# Alexa代理
# `IDOAlexaDelegate`



### 方法

### `getHealthValue(valueType:)`

获取健康数据

- Parameters:
  - valueType: 健康数据类型([IDOGetValueType](../enum/IDOGetValueType.md))

### `getHrValue(dataType:timeType:)`

获取心率

- Parameters:
  - dataType:  0: 平均，1： 最大，2： 最小
  - timeType:  0：今天，1：上周，2：上个月，3：上一年

### `functionControl(funType:)`

功能控制

- Parameters:
  - funType:  0 关闭找手机功能

