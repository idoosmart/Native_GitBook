# Set the sports sub-item data arrangement
* [IDOSportSortParamModel](../model/IDOSportSortParamModel.md)
* [IDOSportSortModel](../model/IDOSportSortModel.md)

Function table: setSet20SportParamSort

### Example
 
 
Swift
```swift
let param = IDOSportSortParamModel(...)

Cmds.setSportParamSort(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOSportSortModel
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOSportSortParamModel(...)

Cmds.setSportParamSort( param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOSportSortModel
 }else {
 // Failure
 }
}
```
