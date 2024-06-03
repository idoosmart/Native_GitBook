# Get spp mtu length

* [IDOUnitModel](../model/IDOUnitModel.md)

Function table: getSupportGetUnit

### Example

Swift

```swift
Cmds.getUnit().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOUnitModel
 }else {
 // Failure
 }
}
```

Kotlin

```kotlin 
Cmds.getUnit().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOUnitModel?
 }else {
 // Failure 
 }
}
```

