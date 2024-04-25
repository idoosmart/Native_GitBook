# ~~Get the watch name~~ 


Function table: None 

Interface obsolete

### Example 

Swift
```swift
Cmds.getDeviceName().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is String
 }else {
 // Failure
 }
}
```

Kotlin 
```kotlin
Cmds.getDeviceName().send {
 if (it.error.code == 0) {
 // Success
 // it.res is String
 }else {
 // Failure
 }
 }
```
