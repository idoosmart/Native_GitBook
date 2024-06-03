# Set unit 
* [IDOUnitParamModel](../model/IDOUnitParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: 
setSupportFahrenheit (secondary menu) 
setSupportCalorieUnit(2 level menu) 
setSupportSwimPoolUnit (secondary menu) 
setSupportCyclingUnit (secondary menu) 
setSupportWalkRunUnit (secondary menu) 

### Example 

Swift
```swift
let param = IDOUnitParam Model(...)

Cmds.setUnit(param).send { rs in
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
val param = IDOUnitParamModel(...)

Cmds.setUnit(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // failed
 }
}
```
