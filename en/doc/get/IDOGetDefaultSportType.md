# Get the default sport type 
* [IDODefaultSportTypeModel](../model/IDODefaultSportTypeModel.md)

Function table:setV3GetSportSortField

### Example

Swift
```swift
Cmds.getDefaultSportType().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDODefaultSportTypeModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin 
Cmds.getDefaultSportType().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDODefaultSportTypeModel
 }else {
 // Failure
 }
}
```
