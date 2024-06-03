# File transfer 
# `FileTransfernterface`

### Properties 

### `isTransmitting`

Whether the transfer is being performed

### `transFileType`

The file type currently being transferred

 
### Method 

### `transferFiles(fileItems:cancelPrevTranTask:transProgress:transStatus:completion:)`

Perform file transfer

- Parameters:
 - fileItems: File to be transferred
 - cancelPrevTranTask: Whether to cancel the ongoing transfer task ( if Yes) 
 - transProgress: file transfer progress 
 - transStatus: file transfer status 
 - completion: transfer result, in the form: [true, true, ...] and the incoming fileItems correspond one-to-one 

### `iwfFileSize (filePath:type:completion:)`

Get the .iwf file size before compression

- Parameters:
 - filePath: watch face file absolute path 
 - type: watch face type 1 cloud watch face, 2 wallpaper watch face 
 - completion: file size (Unit bytes) 



## Example 

Entity class: 

[IDOTransSportModel](IDOTransSportModel.md)

[IDOTransMusicModel](IDOTransMusicModel.md)
 
[IDOTransNormalModel](IDOTransNormalModel.md)

pieces Example: 

[IDOTransType](../enum/IDOTransType.md)

Swift:

```swift
var items = [IDOTransBaseModel]()
 
//Music
items.append(IDOTransMusic Model(filePath: "\(mp3Path)/1.mp3", fileName: "mp3_1", musicId: 1))
items.append(IDOTransMusicModel(filePath: "\(mp3Path)/2.mp3", fileName: "mp3_2", musicId: 2))
items.append(IDOTransMusicModel(filePath: "\(mp3Path)/3.mp3", fileName: "mp3_3", musicId: 3))

// Sports icon - picture 
items.append(IDOTransSportModel(filePath : "x.png", fileName: "icon_sport1", sportType: 2, iconType: 1, isSports: false))
items.append(IDOTransSportModel(filePath: "x.png", fileName: "icon_sport2", sportType: 2 , iconType: 1, isSports: false))

// Sports icons - animation 
items.append(IDOTransSportModel(filePath: "x.bmp", fileName: "icon_sports1", sportType: 2, iconType: 3, isSports: true ))
items.append(IDOTransSportModel(filePath: "x.bmp", fileName: "icon_sports2", sportType: 2, iconType: 3, isSports: true))

// Wallpaper dial 
items.append(IDOTransNormalModel(fileType : .wallpaperZ, filePath: "x.png", fileName: "wallpaper.z"))

// Cloud dial
items.append(IDOTransNormalModel(fileType: .iwfLz, filePath: "noise_w96.zip", fileName: " noise_w96"))

// Firmware
items.append(IDOTransNormalModel(fileType: .fw, filePath: "xx.fw", fileName: "xx"))


// Call transfer 
let canceler = sdk.transfer .transferFiles(fileItems: items, cancelPrevTranTask: true) { currentIndex, totalCount, _, totalProgress in
 print("Transferring (\(currentIndex + 1)/\(totalCount)...")
} transStatus: { _, status, errorCode, _ in
 if status != .finished || errorCode != 0 {
 print("Transmission failed:\(errorCode)")
 }
} completion: { rs in
 print("Transmission completed: \ (rs)")
 if rs.last! {
 // Transfer successful
 } else {
 // Transfer failed
 }
}

// Cancel transfer
canceler?.cancel()
```

Kotlin :

```kotlin
var items = mutableListOf<IDOTransBaseModel>()
 
// Music
items.add(IDOTransNormalModel(filePath: "\(mp3Path)/1.mp3", fileName: "mp3_1", musicId: 1))
items.add(IDOTransNormalModel(filePath: "\(mp3Path)/2.mp3", fileName: "mp3_2", musicId: 2))
items.add(IDOTransNormalModel(filePath: "\(mp3Path)/3 .mp3", fileName: "mp3_3", musicId: 3))

// Sports icon - picture 
items.add(IDOTransSportModel(filePath: "x.png", fileName: "icon_sport1", sportType: 2, iconType: 1, isSports: false))
items.add(IDOTransSportModel(filePath: "x.png", fileName: "icon_sport2", sportType: 2, iconType: 1, isSports: false))

// Sports icon - animation 
items.add(IDOTransSportModel(filePath: "x.bmp", fileName: "icon_sports1", sportType: 2, iconType: 3, isSports: true))
items.add(IDOTransSportModel(filePath: "x.bmp", fileName: "icon_sports2", sportType: 2, iconType: 3, isSports: true))

// Wallpaper dial
items.add(IDOTransNormalModel(fileType = IDOTransType.WALLPAPERZ,filePath = "xx/xx.png",fileName = "wallpaper.z",fileSize = xx) )

// Cloud watch face 
items.add(IDOTransNormalModel(fileType: .iwfLz, filePath: "noise_w96.zip", fileName: "noise_w96"))

// Firmware 
items.add(IDOTransNormalModel(fileType: .fw , filePath: "xx.fw", fileName: "xx"))


// Call transfer 
val cancelable = sdk.transfer.transferFiles(
 items, cancelPre,
 { currentIndex, totalCount, currentProgress, totalProgress -> 
 print("Transmitting ${currentIndex + 1}/$totalCount...")
 },
 { currentIndex: Int, status: IDOTransStatus, errorCode: Int?, finishingTime: Int? ->
 if (status != IDOTransStatus .FINISHED || errorCode != 0) {
 print("Transmission failed: $errorCode")
 }
 },
 {resultList-> resultList.forEach {
 if (it){
 //Transmission successful
 }else{ 
 //Transfer failed
 }
 }})

// Cancel transfer
canceler?.cancel()
```
