# Get download language support
* [IDODownloadLanguageModel](../model/IDODownloadLanguageModel.md)

Function table: getDownloadLanguage

### Example

Swift
```swift
Cmds.getDownload Language().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDODownloadLanguageModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 
Cmds.getDownloadLanguage().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDODownloadLanguageModel
 }else {
 // Failure
 }
}
```
