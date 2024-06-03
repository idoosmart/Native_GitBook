# 数据交换实现逻辑

### 功能表判断

如果属性 supportV3ActivityExchange = false 则当前运动数据属于v2,否则是v3; 

v2属于老设备运动协议，能计算展示的数据相对少；

v3属于新设备运动协议，能计算展示的数据相对多；（目前新设备都属于此类）

### APP发起运动

#### APP开始

#### IDOAppStartExchangeModel

```java
  时间（日、时、分、秒）：当前运动全局管理唯一参照，开始、结束、暂停、恢复需要下发相同时间
  /// 开始的日期 
  startExchangeModel.day = day;
  /// 开始的时钟
  startExchangeModel.hour = hour;
  /// 开始的分钟  
  startExchangeModel.minute = minute;
  /// 开始的秒钟
  startExchangeModel.second = second;
  /// 运动类型 
  startExchangeModel.sportType = sportType;
  /// 如果当前有其他运动在进行，此参数赋值强制开启，则会强制覆盖上个运动
  startExchangeModel.forceStart = forceStart;
  ... 其他属性结合业务需要下发，目前暂未使用到
```

#### Ble回复

#### IDOAppStartReplyExchangeModel

```java
    /// 0:成功; 
    /// 1:设备已经进入运动模式失败;
   /// 2:设备电量低失败;3:手环正在充电
   /// 4:正在使用Alexa 5:通话中 
  startReplyExchangeModel.retCode;
```

#### APP停止

#### IDOAppEndExchangeModel

```java
/// 开始的日期 （参照开始时间）
endExchangeModel.day = startExchangeModel.day;
/// 开始的时钟（参照开始时间）
endExchangeModel.hour = startExchangeModel.hour;
/// 开始的分钟（参照开始时间）
endExchangeModel.minute = startExchangeModel.minute;
/// 开始的秒钟（参照开始时间）
endExchangeModel.second = startExchangeModel.second;
/// 运动类型
endExchangeModel.sportType = sportType;
/// 全局运动持续的时长 （单位秒）
endExchangeModel.duration = totalSeconds;
/// 全局运动累计的卡路里 （单位：大卡）
endExchangeModel.calories = numCalories;
/// 全局运动累计的运动距离 （单位：米）
endExchangeModel.distance = mSendDistance;
/// 是否保持数据 （当运动时长过短时，可以选择不存储，运动时长最少要1分钟以上，选择保存后，数据同步才有数据）
endExchangeModel.isSave = isSave;
```

#### Ble回复

#### IDOAppEndReplyExchangeModel

```java
/// 开始的日期 （参照开始时间）
endReplyExchangeModel.day
/// 开始的时钟（参照开始时间）
endReplyExchangeModel.hour
/// 开始的分钟（参照开始时间）
endReplyExchangeModel.minute
/// 开始的秒钟（参照开始时间）
endReplyExchangeModel.second
/// 运动类型
endReplyExchangeModel.sportType
/// 全局运动累计的卡路里 （单位：大卡）
endReplyExchangeModel.calories
/// 全局运动累计的运动距离 （单位：米）
endReplyExchangeModel.distance
/// 全局运动累计的步数 （单位：步）
endReplyExchangeModel.step
/// 平均心率
endReplyExchangeModel.avgHr
  /// 最大心率
endReplyExchangeModel.maxHr
  /// 脂肪燃烧时长 单位分钟
endReplyExchangeModel.burnFatMins
  /// 心肺锻炼时长 单位分钟
endReplyExchangeModel.aerobicMins
  /// 极限锻炼时长 单位分钟
endReplyExchangeModel.limitMins
```

#### APP暂停

#### IDOAppPauseExchangeModel

```java
/// 开始的日期 （参照开始时间）
pauseExchangeModel.day = startExchangeModel.day;
/// 开始的时钟（参照开始时间）
pauseExchangeModel.hour = startExchangeModel.hour;
/// 开始的分钟（参照开始时间）
pauseExchangeModel.minute = startExchangeModel.minute;
/// 开始的秒钟（参照开始时间）
pauseExchangeModel.second = startExchangeModel.second;
```

#### Ble回复

#### IDOAppPauseReplyExchangeModel

```java
/// 暂停错误码 0:成功 非0:失败
pauseReplyExchangeModel.errCode
```

#### APP恢复

#### IDOAppRestoreExchangeModel

```java
/// 开始的日期 （参照开始时间）
restoreExchangeModel.day = startExchangeModel.day;
/// 开始的时钟（参照开始时间）
restoreExchangeModel.hour = startExchangeModel.hour;
/// 开始的分钟（参照开始时间）
restoreExchangeModel.minute = startExchangeModel.minute;
/// 开始的秒钟（参照开始时间）
restoreExchangeModel.second = startExchangeModel.second;
```

#### Ble回复

#### IDOAppRestoreReplyExchangeModel

```java
/// 暂停错误码 0:成功 非0:失败
pauseRestoreExchangeModel.errCode
```

#### v2 数据交换

#### IDOAppIngExchangeModel

```java
全局每隔2秒执行v2数据交换
/// 0：全部数据有效，1：距离无效 2：GPS信号弱 （暂未使用）
v2exchangeModel.status = status;
/// 开始的日期 （参照开始时间）
v2exchangeModel.day = startExchangeModel.day;
/// 开始的时钟（参照开始时间）
v2exchangeModel.hour = startExchangeModel.hour;
/// 开始的分钟（参照开始时间）
v2exchangeModel.minute = startExchangeModel.minute;
/// 开始的秒钟（参照开始时间）
v2exchangeModel.second = startExchangeModel.second;
/// 全局运动持续的时长 （单位秒）
v2exchangeModel.duration = totalSeconds;
/// 全局运动累计的卡路里 （单位：大卡）
v2exchangeModel.calories = numCalories;
/// 全局运动累计的运动距离 （单位：米）
v2exchangeModel.distance = mSendDistance;
```

#### Ble回复

#### IDOAppIngReplyExchangeModel

```java
具体字段参考文档
```

#### v3 数据交换

#### IDOAppIngV3ExchangeModel

```java
全局每隔2秒执行v3数据交换
/// 0：全部数据有效，1：距离无效 2：GPS信号弱 （暂未使用）
v3exchangeModel.signal = signal;  
/// 开始的日期 （参照开始时间） 
v3exchangeModel.day = startExchangeModel.day;
/// 开始的时钟（参照开始时间）
v3exchangeModel.hour = startExchangeModel.hour;
/// 开始的分钟（参照开始时间）
v3exchangeModel.minute = startExchangeModel.minute;
/// 开始的秒钟（参照开始时间）
v3exchangeModel.second = startExchangeModel.second;
/// 全局运动持续的时长 （单位秒）
v3exchangeModel.duration = totalSeconds;
/// 全局运动累计的卡路里 （单位：大卡）
v3exchangeModel.calories = numCalories;
/// 全局运动累计的运动距离 （单位：米）
v3exchangeModel.distance = mSendDistance;
/// app计算显示实时配速，单位km/h，100倍
v3exchangeModel.speed = speed;
/// 功能表判断是否支持gps坐标点下发
if (sdk.funTable.setSupportExchangeSetGpsCoordinates) {
  /// 如果支持则赋值当前两秒内定位的坐标点
  v3exchangeModel.gpsInfoCount = exchangeLatLng.length;
  List<Map<String, int>> gps = [];
  for (var element in exchangeLatLngSDK
    gps.add(<String, int>{
      "latitude": (element.latitude * 1000000).toInt(),
      "longitude": (element.longitude * 1000000).toInt(),
    });
  }
  v3exchangeModel.gps = gps;
}

```

#### Ble回复

#### IDOAppIngV3ReplyExchangeModel

```java
具体字段参考文档
```

#### 获取v3心率数据

```java
全局每隔30秒获取一次心率数据
getActivityHrData(completion:)
```

#### Ble响应

#### IDOAppHrDataExchangeModel

```java
具体字段参考文档
```

#### 获取v3最近运动数据小结

```java
全局每隔40秒获取一次运动小结
getLastActivityData(completion: )
```

#### Ble响应

IDOAppActivityDataV3ExchangeModel

```java
具体字段参考文档
```

#### Ble发起暂停，APP回复 (响应给固件状态，完成整个指令闭环)

#### IDOAppBlePauseReplyExchangeModel

```java
/// 0: 成功 非0: 失败
replyExchangeModer.errCode = code
```

#### Ble发起恢复，APP回复 (响应给固件状态，完成整个指令闭环)

#### IDOBleRestoreReplyExchangeModel

```java
/// 0: 成功 非0: 失败
replyExchangeModer.errCode = code
```

#### Ble发起结束，APP回复 (响应给固件状态，完成整个指令闭环)

#### IDOBleEndReplyExchangeModel

```java
/// 0: 成功 非0: 失败
replyExchangeModer.errCode = code
/// 全局运动持续的时长 （单位秒）
replyExchangeModer.duration = duration
/// 全局运动累计的卡路里 （单位：大卡）
replyExchangeModer.calories = calories
/// 全局运动累计的运动距离 （单位：米）
replyExchangeModer.distance = distance
```

### Ble发起运动 （APP项目未启用）

#### APP监听Ble命令

#### Ble响应开始

### IDOBleStartExchangeModel

```java
/// 1：请求app打开gps 2：发起运动请求
bleStartExchangeModel.operate
/// 运动类型  
bleStartExchangeModel.stportType 
/// 开始的日期 （初始化运动开始时间）
startExchangeModel.day = bleStartExchangeModel.day
/// 开始的时钟（初始化运动开始时间）
startExchangeModel.hour = bleStartExchangeModel.hour
/// 开始的分钟（初始化运动开始时间）
startExchangeModel.minute = bleStartExchangeModel.minute
/// 开始的秒钟（初始化运动开始时间）
startExchangeModel.second = bleStartExchangeModel.second
```

#### APP回复

#### IDOBleStartReplyExchangeModel

```java
/// 1：请求app打开gps 2：发起运动请求
bleStartReplyExchangeModel.operat = bleStartExchangeModel.operate
/// 0: 成功 非0: 失败
bleStartReplyExchangeModel.retCode = 0
```

#### Ble响应暂停

#### IDOBlePauseExchangeModel

```java
/// 开始的日期
blePauseReplyExchangeModel.day 
/// 开始的时钟
blePauseReplyExchangeModel.hour 
/// 开始的分钟
blePauseReplyExchangeModel.minute 
/// 开始的秒钟
blePauseReplyExchangeModel.second 
```

#### APP回复

#### IDOBlePauseReplyExchangeModel

```java
/// 0: 成功 非0: 失败
blePauseReplyExchangeModel.retCode = 0
```

#### Ble响应恢复

#### IDOBleRestoreExchangeModel

```java
/// 开始的日期
bleRestoreReplyExchangeModel.day 
/// 开始的时钟
bleRestoreReplyExchangeModel.hour 
/// 开始的分钟
bleRestoreReplyExchangeModel.minute 
/// 开始的秒钟
bleRestoreReplyExchangeModel.second 
```

#### APP回复

#### IDOBleRestoreReplyExchangeModel

```java
/// 0: 成功 非0: 失败
bleRestoreReplyExchangeModel.retCode = 0
```

#### Ble响应结束

#### IDOBleEndExchangeModel

```java
/// 开始的日期
bleEndReplyExchangeModel.day 
/// 开始的时钟
bleEndReplyExchangeModel.hour 
/// 开始的分钟
bleEndReplyExchangeModel.minute 
/// 开始的秒钟
bleEndReplyExchangeModel.second 
```

#### APP回复

#### IDOBleEndReplyExchangeModel

```java
/// 0: 成功 非0: 失败
bleEndReplyExchangeModel.retCode = 0
```

#### Ble响应数据

#### IDOBleIngExchangeModel

```java
/// 开始的日期
bleIngReplyExchangeModel.day 
/// 开始的时钟
bleIngReplyExchangeModel.hour 
/// 开始的分钟
bleIngReplyExchangeModel.minute 
/// 开始的秒钟
bleIngReplyExchangeModel.second 
/// 距离 单位：0.01km  
bleIngReplyExchangeModel.distance
```

#### APP回复

#### IDOBleIngReplyExchangeModel

```java
/// 距离 单位：0.01km
bleIngReplyExchangeModel.distance = 0
```



### 全局监听完整数据

1.sdk 已经做了数据管理计算处理，APP可以直接拿数据UI显示

2.上面具体指令执行响应的数据可以不作处理（作为日志记录）

3.app 和 设备数据有进行交换则会触发完整数据变化

#### v2 数据

```java
exchangeV2Data(completion:)
```

### IDOExchangeV2Model

```java
具体字段参考文档
```

#### v3 数据

```java
exchangeV3Data(completion:)
```

### IDOExchangeV3Model

```java
具体字段参考文档
```

