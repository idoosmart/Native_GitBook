# Get spp mtu length (Android) 

* [IDOSppMtuModel](../model/IDOSppMtuModel.md)

### Example 

Kotlin

```kotlin
Cmds.getMtuLengthSPP().send { 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOSppMtuModel
 }else {
 // Failure
 }
}
```

