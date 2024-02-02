# Get the default type of motion V3

* [IDODefaultSportTypeModel](../model/IDODefaultSportTypeModel.md)

Function Table: setV3GetSportSortField

### Example

Swift

```swift
Cmds.getSportTypeV3().send { rs in
     if case .success(let obj) = rs {
         // success
         // obj is IDODefaultSportTypeModel
     }else {
         // fail
     }
}
```

Kotlin

```kotlin
Cmds.getSportTypeV3().send {
     if (it.res != null) {
         // success
         // it.res is IDODefaultSportTypeModel
     }else {
         // fail
     }
}
```
