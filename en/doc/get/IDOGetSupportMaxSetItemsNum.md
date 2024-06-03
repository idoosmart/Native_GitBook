# Get the maximum number of detailed settings supported by the firmware 
* [IDOSupportMaxSetItemsNumModel](../model/IDOSupportMaxSetItemsNumModel.md)

Function table: getSetMaxItemsNum

### Example

Swift
```swift 
Cmds.getSupportMaxSetItemsNum().send { rs in
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOSupportMaxSetItemsNumModel
 }else {
 // Failure 
 }
}
```

Kotlin

``` kotlin
Cmds.getSupportMaxSetItemsNum().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOSupportMaxSetItemsNumModel
 }else {
 // Failure
 }
} 
`` `
