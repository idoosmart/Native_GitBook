# 数据同步功能
### 功能概述

同步设备数据是一个非常重要的功能。同步过程建议不要执行其他命令， 在同步过程中会返回进度，并且在每个项同步后返回完成状态。根据同步状态判断同步是否完成，同步过程中会记录同步日志。

# `SyncDataInterface`

### 属性

### `status`

同步状态

### 方法

### `startSync(funcProgress:funcData:funcCompleted:)`

开始同步所有数据

- Parameters:
  -  funcProgress: 同步数据进度回调
  - funcData: 同步数据回调
  - funcCompleted: 同步完成回调

> SDK内部会按以下顺序执行：
>
> 1. IDOSyncDataType.bloodOxygen （血氧）
> 2. IDOSyncDataType.pressure（压力）
> 3. IDOSyncDataType.activity（多运动）
> 4. IDOSyncDataType.gPS（GPS）
> 5. IDOSyncDataType.swim（游泳）
> 6. IDOSyncDataType.sleep（睡眠）
> 7. IDOSyncDataType.stepCount（步数）
> 8. IDOSyncDataType.noise（噪音）
> 9. IDOSyncDataType.piven（温度）
> 10. IDOSyncDataType.bloodPressure（血压）
> 11. IDOSyncDataType.respirationRate（呼吸频率）
> 12. IDOSyncDataType.bodyPower（身体电量）
> 13. IDOSyncDataType.hRV （HRV：心率变异性水平）
> 14. IDOSyncDataType.heartRate（心率）



### `startSync(types:funcData:funcCompleted:)`

开始同步指定数据

- Parameters:
  -  types: 要同步的数据类型 
  -  funcData: 同步数据回调
  -  funcCompleted: 同步完成回调

### `getSupportSyncDataTypeList(completed:)`

获取支持的同步数据类型

- Parameters:
  -  支持的类型列表回调

### `stopSync()`

停止同步所有数据



### 数据类型

| [运动数据](IDOSyncStepCount.md) | [心率数据](IDOSyncHrData.md)         | [睡眠数据](IDOSyncSleepData.md)        |
| ------------------------------- | ------------------------------------ | -------------------------------------- |
| [血压数据](IDOSyncBpData.md)    | [血氧数据](IDOSyncSpo2Data.md)       | [压力数据](IDOSyncPressure.md)         |
| [噪音数据](IDOSyncNoiseData.md) | [皮温数据](IDOSyncPivenData.md)      | [呼吸率数据](IDOSyncRespirRateData.md) |
| [HRV数据](IDOSyncHrvData.md)    | [多运动数据](IDOSyncActivityData.md) | [GPS数据](IDOSyncGpsData.md)           |
| [游泳数据](IDOSyncSwimData.md)  |                                      |                                        |

## 示例

Swift

```swift
/// 开始同步 
sdk.syncData.startSync { progress in
      print("sync data progress:\(progress)")
  } funcData: { type, jsonStr, errorCode in
      print("sync data type:\(type) jsonStr:\(jsonStr) errCode:\(errorCode)")
  } funcCompleted: { errorCode in
      print("sync data done errCode:\(errorCode)")
  }

/// 结束同步
sdk.syncData.stopSync()
```

Kotlin:

```kotlin
/// 开始同步 
sdk.syncData.startSync({ progress ->
     print("sync data progress:$progress")
}, { type, jsonStr, errorCode ->
   print("sync data type:$type, jsonStr:$jsonStr, errCode:$errorCode")
}, { errorCode -> 
print("sync data done errCode:$errorCode")
})
/// 结束同步
sdk.syncData.stopSync()
```

