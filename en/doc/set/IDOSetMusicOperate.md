# Operate songs or folders
* [IDOMusicOpearteParamModel](../model/IDOMusicOpearteParamModel.md)
* [IDOMusicOperateModel](../model/IDOMusicOperateModel.md)



### Example


Swift
```Swift 
let param = IDOMusicOpearteParamModel(...) 

Cmds.setMusicOperate (param) .send {rs In
 if case .success (let obj) = rs {
 // obj is IDOMusicOperateModel
 } else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOMusicOpearteParamModel(...)

Cmds.setMusicOperate(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOMusicOperateModel
 }else {
 // Failure
 }
}
```
