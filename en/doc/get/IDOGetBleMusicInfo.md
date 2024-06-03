# Get the song name and folder of the firmware 
* [IDOMusicInfoModel](../model/IDOMusicInfoModel.md)

Function table: getSupportV3BleMusic 
getSupportGetBleMusicInfoVerV3 (secondary menu)

### Example

 
Swift
``` swift
Cmds.getBleMusicInfo().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOMusicInfoModel
 }else {
 // Failure
 }
}
``` 

Kotlin
```kotlin
Cmds.getBleMusicInfo().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOMusicInfoModel
 }else {
 // Failure 
 }
}
```
