# Get the default sport type V3
* [IDODefaultSportTypeModel](../model/IDODefaultSportTypeModel.md)

Function table:setV3GetSportSortField

### Example

Swift
```swift
Cmds.getSportTypeV3().send { rs in
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
 Cmds.getSportTypeV3().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDODefaultSportTypeModel
 }else {
 // Failure
 }
}
```
 