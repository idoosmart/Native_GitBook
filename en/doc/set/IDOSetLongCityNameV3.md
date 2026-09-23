# Set the sports city name
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

### Parameter description:

| Field name | Field type | Field description |
| -------- | -------- | ------------------------- |
| cityName | String | City name<br/>Maximum 74 bytes |

### Example

Swift
```swift
Cmds.setLongCityNameV3(cityName: "sz").send { rs in
if case .success(let obj) = rs {
// Success
// obj is IDOCmdSetResponseModel
}else {
// Failure
}
}
```

Kotlin
```kotlin
Cmds.setLongCityNameV3(cityName: "sz").send {
if (it.error.code == 0) {
// Success
}else { 
  // failed 
} 
}