# New 100 sports sorting
* [IDOSport100SortParamModel](../model/IDOSport100SortParamModel.md)
* [IDOSport100SortModel](../model/IDOSport100SortModel.md)

Function table: getSportsTypeV3

 
### Example
 
Swift
```swift
let param = IDOSport100SortParamModel(...)

Cmds.setSport100Sort(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOSport100SortModel
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOSport100SortParamModel(...)

Cmds.setS port100Sort(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOSport100SortModel
 }else {
 // Failure
 }
}
```
