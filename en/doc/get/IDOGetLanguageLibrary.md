# Get the language library list
* [IDOLanguageLibraryModel](../model/IDOLanguageLibraryModel.md)

Function table:getLangLibraryV3

### Example

Swift
```swift
Cmds.getLanguageLibrary().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOLanguageLibraryModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 
Cmds.getLanguageLibrary().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOLanguageLibraryModel
 }else {
 // Failure
 }
}
```
