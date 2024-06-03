# Data exchange implementation logic 

### Function table judgment 

If the attribute supportV3ActivityExchange = false, the current motion data belongs to v2, otherwise it is v3; 

v2 belongs to the old equipment motion protocol, and relatively little data can be calculated and displayed; 

 v3 belongs to the new device motion protocol and can calculate and display relatively much data; (currently new devices fall into this category) 

### APP initiates motion 

#### APP starts 

#### IDOAppStartExchangeModel

```java
 Time (day, hour, minute, second): The only reference for global management of the current sport. The same time needs to be issued for start, end, pause and resume
 /// Start date
 startExchangeModel.day = day;
 / // Starting clock
 startExchangeModel.hour = hour;
 /// Starting minute
 startExchangeModel.minute = minute;
 /// Starting second
 startExchangeModel.second = second;
 /// Movement type
 startExchangeModel. sportType = sportType;
 /// If there are other sports currently in progress, and this parameter is assigned a value to force it on, the previous sport will be forcibly overwritten
 startExchangeModel.forceStart = forceStart;
 ... Other attributes are issued based on business needs, and are currently temporarily Not used to 
```

#### Ble reply

#### IDOAppStartReplyExchangeModel

```java
 /// 0: Success; 
 /// 1: The device has entered sports mode and failed;
 /// 2: Device battery is low and failed; 3: The bracelet is charging
 /// 4: Using Alexa 5: Calling
 startReplyExchangeModel.retCode;
```

#### APP stops

#### IDOAppEndExchangeModel

```java
/// The start date (refer to the start time) 
endExchangeModel.day = startExchangeModel.day;
/// The start clock (refer to the start time) 
endExchangeModel.hour = startExchangeModel.hour ;
/// The starting minute (refer to the start time) 
endExchangeModel.minute = startExchangeModel.minute;
/// The starting second (refer to the start time) 
endExchangeModel.second = startExchangeModel.second;
/// Movement type 
endExchangeModel.sportType = sportType;
/// The duration of global exercise (unit: seconds) 
endExchangeModel.duration = totalSeconds;
/// The calories accumulated by global exercise (unit: kcal) 
endExchangeModel.calories = numCalories;
 /// The accumulated movement distance of global movement (unit: meters) 
endExchangeModel.distance = mSendDistance;
/// Whether to keep the data (when the exercise duration is too short, you can choose not to store it, the exercise duration must be at least 1 minute or more, select After saving, the data will be synchronized) 
endExchangeModel.isSave = isSave;
```

#### Ble reply

#### IDOAppEndReplyExchangeModel

```java
/// Start date (refer to start time) 
endReplyExchangeModel.day
/// start clock (refer to start time) 
endReplyExchangeModel.hour
/// start minute (refer to start time) 
endReplyExchangeModel.minute
/// start second (refer to start time) Time) 
endReplyExchangeModel.second
/// Exercise type 
endReplyExchangeModel.sportType
/// Global exercise accumulated calories (unit: kcal) 
endReplyExchangeModel.calories 
/// Global exercise accumulated exercise distance (unit: meters) 
endReplyExchangeModel.distance
/// The number of steps accumulated by global movement (unit: step) 
endReplyExchangeModel.step
/// Average heart rate 
endReplyExchangeModel.avgHr
 /// Maximum heart rate 
endReplyExchangeModel.maxHr
 /// Fat burning time Unit minutes
endReplyExchangeModel.burnFatMins
 /// Cardiovascular exercise duration unit minutes
endReplyExchangeModel.aerobicMins
 /// Extreme exercise duration unit minutes
endReplyExchangeModel.limitMins
```

#### APP pause


#### IDOAppPauseExchangeModel

```java
/// The start date (refer to the start time) 
pauseExchangeModel.day = startExchangeModel.day;
/// The start clock (refer to the start time) 
pauseExchangeModel.hour = startExchangeModel.hour;
 /// The starting minute (refer to the start time) 
pauseExchangeModel.minute = startExchangeModel.minute;
/// The starting second (refer to the start time) 
pauseExchangeModel.second = startExchangeModel.second;
```

#### Ble reply

#### IDOAppPauseReplyExchangeModel

```java
/// Pause error code 0: Success not 0: Failure 
pauseReplyExchangeModel.errCode
```

#### APP recovery


#### IDOAppRestoreExchangeModel

```java
/// Start date (reference to start time) 
restoreExchangeModel.day = startExchangeModel.day;
/// Start clock (reference to start time) 
restoreExchangeModel.hour = startExchangeModel. hour;
/// The starting minute (refer to the start time) 
restoreExchangeModel.minute = startExchangeModel.minute;
/// The starting second (refer to the start time) 
restoreExchangeModel.second = startExchangeModel.second;
```

#### BleReply

#### IDOAppRestoreReplyExchangeModel

```java
/// Pause error code 0: Success, not 0: Failure 
pauseRestoreExchangeModel.errCode
```

#### v2 Data Exchange

#### IDOAppIngExchangeModel

```java
Global Execute v2 data exchange every 2 seconds 
/// 0: All data is valid, 1: Distance is invalid 2: GPS signal is weak (not used yet) 
v2exchangeModel.status = status;
/// Start date (refer to start time) ) 
v2exchangeModel.day = startExchangeModel.day;
/// Starting clock (referenced to start time) 
v2exchangeModel.hour = startExchangeModel.hour;
/// Starting minute (referenced to start time) 
v2exchangeModel.minute = startExchangeModel. minute;
/// The starting second (refer to the start time) 
v2exchangeModel.second = startExchangeModel.second;
/// The duration of the global movement (in seconds) 
v2exchangeModel.duration = totalSeconds;
/// Global movement Accumulated calories (unit: kcal) 
v2exchangeModel.calories = numCalories;
/// Global exercise accumulated distance (unit: meters) 
v2exchangeModel.distance = mSendDistance;
```

#### Ble reply 

#### IDOAppIngReplyExchangeModel

```java
Specific field reference document
```

#### v3 Data Exchange

#### IDOAppIngV3ExchangeModel

```java
global every 2 seconds Execute v3 data exchange 
/// 0: All data is valid, 1: Distance is invalid 2: GPS signal is weak (not used yet) 
v3exchangeModel.signal = signal; 
/// Start date (refer to start time) 
v3exchangeModel. day = startExchangeModel.day;
/// The starting clock (refer to the start time) 
v3exchangeModel.hour = startExchangeModel.hour;
/// The starting minute (refer to the start time) 
v3exchangeModel.minute = startExchangeModel.minute;
/ // The starting seconds (refer to the start time) 
v3exchangeModel.second = startExchangeModel.second;
/// The duration of global exercise (in seconds) 
v3exchangeModel.duration = totalSeconds;
/// The accumulated calories of global exercise ( Unit: kcal) 
v3exchangeModel.calories = numCalories;
/// The accumulated movement distance of the global movement (unit: meters) 
v3exchangeModel.distance = mSendDistance;
/// The app calculates and displays the real-time pace, in km/h, 100X v3exchangeModel.gpsInfoCount = exchangeLatLng.length;
 List<Map<String, int>> gps = [];
 for (var element in exchangeLatLngSDK
 gps.add(<String, int>{
 "latitude": (element.latitude * 1000000).toint (), 
 "Longitude": (Element.longitude * 1000000).toint (), 
}); 
} 
 v3exchangemodel.gps = gps; 
```

# Ble reply

#### IDOAppIngV3ReplyExchangeModel

```java
Specific field reference document
```

#### Obtain v3 heart rate data

```java
 Globally obtain heart rate every 30 seconds Data
getActivityHrData(completion:)
```

#### Ble response

#### IDOAppHrDataExchangeModel

```java
Specific field reference document
```

#### Get v3 recent Motion data summary

```java
// Get the motion summary globally every 40 seconds
getLastActivityData(completion: )
```

#### Ble response

IDOAppActivityDataV3ExchangeModel

```java
 Specific field reference Document 
```

#### Ble initiates a pause, APP replies (responds to the firmware status, completes the entire command closed loop) 

#### IDOAppBlePauseReplyExchangeModel

```java
/// 0: Success is not 0 : Failed
replyExchangeModer.errCode = code
```

#### Ble initiates recovery, APP replies (responds to firmware status, completes the entire command closed loop)

#### IDOBleRestoreReplyExchangeModel

```java
/// 0: Success, not 0: Failure 
replyExchangeModer.errCode = code
```

#### Ble initiation ends, APP replies (responds to firmware status, completes the entire command closed loop) 

#### IDOBleEndReplyExchangeModel

```java
/// 0: Success, non-0: Failure 
replyExchangeModer.errCode = code
/// The duration of the global exercise (in seconds) 
replyExchangeModer.duration = duration
/// The calories accumulated by the global exercise (Unit: kcal) 
replyExchangeModer.calories = calories
/// Global exercise accumulated exercise distance (unit: meters) 
replyExchangeModer.distance = distance
```

### Ble initiates exercise (APP project is not enabled) ) 

#### APP listens for Ble commands 

#### Ble response starts 

### IDOBleStartExchangeModel 

```java
/// 1: Request app to open gps 2: Initiate motion request 
bleStartExchangeModel. operate
/// Movement type 
bleStartExchangeModel.stportType 
/// Start date (initialized movement start time) 
startExchangeModel.day = bleStartExchangeModel.day
/// Start clock (initial movement start time) 
startExchangeModel.hour = bleStartExchangeModel.hour
/// Start minute (initial movement start time) 
startExchangeModel.minute = bleStartExchangeModel.minute
 /// The starting second (initial movement start time) 
startExchangeModel.second = bleStartExchangeModel.second
```

#### APP reply

#### IDOBleStartReplyExchangeModel

```java
/// 1: Request the app to turn on gps 2: Initiate a motion request 
bleStartReplyExchangeModel.operat = bleStartExchangeModel.operate
/// 0: Success, not 0: Failure 
bleStartReplyExchangeModel.retCode = 0
```

#### Ble response paused

#### IDOBlePauseExchangeModel

```java
/// Start date 
blePauseReplyExchangeModel.day 
/// Start clock 
blePauseReplyExchangeModel.hour 
/// Start minute 
blePauseReply ExchangeModel.minute 
/// Start seconds 
blePauseReplyExchangeModel.second 
```

#### APP reply 

#### IDOBlePauseReplyExchangeModel

```java
/// 0: Success non-0: Failure 
blePauseReplyEx changeModel.retCode = 0
```

#### BleResponseRestore

#### IDOBleRestoreExchangeModel

```java
/// Start date 
bleRestoreReplyExchangeModel.day 
/// Start clock 
bleRestoreReplyExchangeModel.hour 
// / Starting minute 
bleReplyExchangeModel.minute 
/// Starting second 
bleReplyExchangeModel.second 
```

#### APP reply

#### IDOBleRestoreReplyExchangeModel

```java
/// 0 : Success is not 0: Failure 
```

#### Ble response end 

#### IDOBleEndExchangeModel

```java
/// Start date 
bleEndReplyEx changeModel.day 
 /// Starting clock 
bleEndReplyExchangeModel.hour 
/// Starting minute 
bleEndReplyExchangeModel.minute 
/// Starting second 
bleEndReplyExchangeModel.second 
```

#### APP reply


#### IDOBleEndReplyExchangeModel

```java
/// 0: Success is not 0: Failure
bleEndReplyExchangeModel.retCode = 0
```

#### Ble response data

#### IDOBleIngExchangeModel 

``` java
/// Starting date 
bleIngReplyExchangeModel.day 
/// Starting clock 
bleIngReplyExchangeModel.hour 
/// Starting minute 
bleIngReplyExchangeModel.minute 
/// Starting second 
bleIngReplyExchangeModel.changeModel.second 
/// Distance unit: 0.01km 
bleIngReplyExchangeModel.distance
```

#### APP reply

#### IDOBleIngReplyExchangeModel

```java
/// Distance unit: 0.01km
ble IngReplyExchangeModel.distance = 0
```



### Global monitoring of complete data 

1.sdk has done data management and calculation processing, and the APP can directly display the data UI 

2.The data in response to the execution of the specific instructions above does not need to be processed (as Log record) 

3.app and device data exchange will trigger complete data changes 

#### v2 data 

```java
exchangeV2Data(completion:)
```

### IDOExchangeV2Model 

```java
Specific field reference document
```

#### v3 data

```java
exchangeV3Data(completion:)
```

### IDOExchangeV3Model

``` java
Reference document for specific fields
```

