# 设备日志功能
### 功能概述

获取设备flash、电池、过热等日志

# `DeviceLogInterface`

### 属性

### `getLogIng`

是否正在获取日志中

### `logDirPath`

获取所有日志目录地址 (返回：/xx/../ido_sdk/devices/{macAddress}/device_logs)

### 方法

### `startGet(types:timeOut:progress:completion:)`

开始获取日志

- Parameters:
  - types: 日志类型集合
  - timeOut: 获取日志超时
  - progress: 日志获取进度 (0-100)
  - completion: 日志获取完成回调

### `cancel(completion:)`

取消获取日志

- Parameters:
  - completion: 完成回调

### 示例

Swift

```swift
  sdk.deviceLog.startGet(types: [.general], timeOut: 60) { progress in
      //获取flash日志进度
  } completion: { success in
      //获取完成
      if (success) { //成功
        通过logDirPath获取日志
      }else { 
        //失败
      }
      
  }
```
Kotlin

```kotlin
  sdk.deviceLog.startGet(mutableListOf(), 60, { progress ->
    //获取flash日志进度
  }) { success ->
    //获取完成
      if (success) {  //成功
        通过logDirPath获取日志
      } else {
        //失败
      }
  }
```

