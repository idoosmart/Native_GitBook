# 文件传输
# `FileTransfernterface`

### 属性

### `isTransmitting`

是否在执行传输

### `transFileType`

当前传输中的文件类型

### 方法

### `transferFiles(fileItems:cancelPrevTranTask:transProgress:transStatus:completion:)`

执行文件传输

- Parameters:
  - fileItems: 待传文件
  - cancelPrevTranTask: 是否取消执行中的传输任务（如果有）
  - transProgress: 文件传输进度
  - transStatus: 文件传输状态
  - completion: 传输结果，形如：[true, true, ...] 和传入的 fileItems 一一对应

### `iwfFileSize(filePath:type:completion:)`

获取压缩前.iwf文件大小

- Parameters:
  - filePath: 表盘文件绝对路径
  - type: 表盘类型 1 云表盘 ，2 壁纸表盘
  - completion: 文件大小（单位 字节）



## 示例

实体类：

[IDOTransSportModel](IDOTransSportModel.md)

[IDOTransMusicModel](IDOTransMusicModel.md)

[IDOTransNormalModel](IDOTransNormalModel.md)

枚举：

[IDOTransType](../enum/IDOTransType.md)

Swift:

```swift
var items = [IDOTransBaseModel]()
        
// 音乐
items.append(IDOTransMusicModel(filePath: "\(mp3Path)/1.mp3", fileName: "mp3_1", musicId: 1))
items.append(IDOTransMusicModel(filePath: "\(mp3Path)/2.mp3", fileName: "mp3_2", musicId: 2))
items.append(IDOTransMusicModel(filePath: "\(mp3Path)/3.mp3", fileName: "mp3_3", musicId: 3))

// 运动图标 - 图片
items.append(IDOTransSportModel(filePath: "x.png", fileName: "icon_sport1", sportType: 2, iconType: 1, isSports: false))
items.append(IDOTransSportModel(filePath: "x.png", fileName: "icon_sport2", sportType: 2, iconType: 1, isSports: false))

// 运动图标 - 动画
items.append(IDOTransSportModel(filePath: "x.bmp", fileName: "icon_sports1", sportType: 2, iconType: 3, isSports: true))
items.append(IDOTransSportModel(filePath: "x.bmp", fileName: "icon_sports2", sportType: 2, iconType: 3, isSports: true))

// 壁纸表盘
items.append(IDOTransNormalModel(fileType: .wallpaperZ, filePath: "x.png", fileName: "wallpaper.z"))

// 云表盘
items.append(IDOTransNormalModel(fileType: .iwfLz, filePath: "noise_w96.zip", fileName: "noise_w96"))

// 固件
items.append(IDOTransNormalModel(fileType: .fw, filePath: "xx.fw", fileName: "xx"))


// 调用传输
let canceler = sdk.transfer.transferFiles(fileItems: items, cancelPrevTranTask: true) { currentIndex, totalCount, _, totalProgress in
  	print("传输中(\(currentIndex + 1)/\(totalCount)...")
} transStatus: { _, status, errorCode, _ in
    if status != .finished || errorCode != 0 {
        print("传输失败:\(errorCode)")
    }
} completion: { rs in
    print("传输结束: \(rs)")
    if rs.last! {
        // 传输成功
    } else {
        // 传输失败
    }
}

// 取消传输
canceler?.cancel()
```

Kotlin:

```kotlin
var items = mutableListOf<IDOTransBaseModel>()
        
// 音乐
items.add(IDOTransNormalModel(filePath: "\(mp3Path)/1.mp3", fileName: "mp3_1", musicId: 1))
items.add(IDOTransNormalModel(filePath: "\(mp3Path)/2.mp3", fileName: "mp3_2", musicId: 2))
items.add(IDOTransNormalModel(filePath: "\(mp3Path)/3.mp3", fileName: "mp3_3", musicId: 3))

// 运动图标 - 图片
items.add(IDOTransSportModel(filePath: "x.png", fileName: "icon_sport1", sportType: 2, iconType: 1, isSports: false))
items.add(IDOTransSportModel(filePath: "x.png", fileName: "icon_sport2", sportType: 2, iconType: 1, isSports: false))

// 运动图标 - 动画
items.add(IDOTransSportModel(filePath: "x.bmp", fileName: "icon_sports1", sportType: 2, iconType: 3, isSports: true))
items.add(IDOTransSportModel(filePath: "x.bmp", fileName: "icon_sports2", sportType: 2, iconType: 3, isSports: true))

// 壁纸表盘
items.add(IDOTransNormalModel(fileType = IDOTransType.WALLPAPERZ,filePath = "xx/xx.png",fileName = "wallpaper.z",fileSize = xx))

// 云表盘
items.add(IDOTransNormalModel(fileType: .iwfLz, filePath: "noise_w96.zip", fileName: "noise_w96"))

// 固件
items.add(IDOTransNormalModel(fileType: .fw, filePath: "xx.fw", fileName: "xx"))


// 调用传输
val cancellable = sdk.transfer.transferFiles(
    items, cancelPre,
    { currentIndex, totalCount, currentProgress, totalProgress -> 
      print("传输中${currentIndex + 1}/$totalCount...")
    },
    { currentIndex: Int, status: IDOTransStatus, errorCode: Int?, finishingTime: Int? ->
        if (status != IDOTransStatus.FINISHED || errorCode != 0) {
            print("传输失败:$errorCode")
        }
    },
    {resultList-> resultList.forEach {
        if (it){
            //传输成功
        }else{
            //传输失败
        }
    }})

// Cancel transfer
canceler?.cancel()
```
