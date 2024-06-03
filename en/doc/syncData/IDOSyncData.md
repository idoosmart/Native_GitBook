# Data synchronization function
### Functional Overview

Synchronizing device data is a very important feature. It is recommended not to execute other commands during the synchronization process. Progress will be returned during the synchronization process and the completion status will be returned after each item is synchronized. Determine whether the synchronization is completed based on the synchronization status. The synchronization log will be recorded during the synchronization process.

# `SyncDataInterface`

### Attributes

### `status`

Sync status

### method

### `startSync(funcProgress:funcData:funcCompleted:)`

Start syncing all data

- Parameters:
   - funcProgress: synchronization data progress callback
   - funcData: synchronous data callback
   - funcCompleted: synchronous completion callback

> The SDK will be executed in the following order:
>
> 1. IDOSyncDataType.bloodOxygen
> 2. IDOSyncDataType.pressure
> 3. IDOSyncDataType.activity
> 4. IDOSyncDataType.gPS
> 5. IDOSyncDataType.swim
> 6. IDOSyncDataType.sleep
> 7. IDOSyncDataType.stepCount
> 8. IDOSyncDataType.noise
> 9. IDOSyncDataType.piven（temperature）
> 10. IDOSyncDataType.bloodPressure
> 11. IDOSyncDataType.respirationRate
> 12. IDOSyncDataType.bodyPower
> 13. IDOSyncDataType.hRV
> 14. IDOSyncDataType.heartRate (heart rate)



### `startSync(types:funcData:funcCompleted:)`

Start synchronizing specified data

- Parameters:
   - types: data types to be synchronized
   - funcData: synchronous data callback
   - funcCompleted: synchronous completion callback

### `getSupportSyncDataTypeList(completed:)`

Get supported synchronization data types

- Parameters:
   - List of supported callback types

### `stopSync()`

Stop syncing all data

### type of data

| [Exercise data](IDOSyncStepCount.md) | [Heart rate data](IDOSyncHrData.md) | [Sleep data](IDOSyncSleepData.md) |
| ---------------------------------- | ------------------ ------------------ | ---------------------------------- -------- |
| [Blood pressure data](IDOSyncBpData.md) | [Blood oxygen data](IDOSyncSpo2Data.md) | [Pressure data](IDOSyncPressure.md) |
| [Noise data](IDOSyncNoiseData.md) | [Pipe temperature data](IDOSyncPivenData.md) | [Respiratory rate data](IDOSyncRespirRateData.md) |
| [HRV data](IDOSyncHrvData.md) | [Multi-sport data](IDOSyncActivityData.md) | [GPS data](IDOSyncGpsData.md) |
| [Swimming Data](IDOSyncSwimData.md) | | |

## Example

Swift

```swift
/// Start synchronization
sdk.syncData.startSync { progress in
     print("sync data progress:\(progress)")
 } funcData: { type, jsonStr, errorCode in
     print("sync data type:\(type) jsonStr:\(jsonStr) errCode:\(errorCode)")
 } funcCompleted: { errorCode in
     print("sync data done errCode:\(errorCode)")
 }

/// End synchronization
sdk.syncData.stopSync()
```

Kotlin:

```kotlin
/// Start synchronization
sdk.syncData.startSync({ progress ->
   print("sync data progress:$progress")
}, { type, jsonStr, errorCode ->
   print("sync data type:$type, jsonStr:$jsonStr, errCode:$errorCode")
}, { errorCode ->
		print("sync data done errCode:$errorCode")
})
/// End synchronization
sdk.syncData.stopSync()
```
