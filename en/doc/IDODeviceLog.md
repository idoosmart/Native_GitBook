# Device log function

### Functional Overview

Get device flash, battery, overheating and other logs

# `DeviceLogInterface`

### Attributes

### `getLogIng`

Is the log being obtained?

### `logDirPath`

Get all log directory addresses (return: /xx/../ido_sdk/devices/{macAddress}/device_logs)

### method

### `startGet(types:timeOut:progress:completion:)`

Start getting logs

- Parameters:
   - types: log type collection
   - timeOut: timeout for getting logs
   - progress: log acquisition progress (0-100)
   - completion: log acquisition completion callback

### `cancel(completion:)`

Cancel fetching logs

- Parameters:
   - completion: completion callback

### Example

Swift

```swift
   sdk.deviceLog.startGet(types: [.general], timeOut: 60) { progress in
       //Get flash log progress
   } completion: { success in
       //Get completed
       if (success) { //success
         Get logs through logDirPath
       }else {
         //fail
       }
      
   }
```

Kotlin

```kotlin
   sdk.deviceLog.startGet(mutableListOf(), 60, { progress ->
     //Get flash log progress
   }) { success ->
     //Get completed
       if (success) { //success
         Get logs through logDirPath
       } else {
         //fail
       }
   }
```
