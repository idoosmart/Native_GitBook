# 工具方法
# `ToolsInterface`

## 方法

### `png2Bmp(inPath:outPath:format:completion:)`

图片转换格式 png->bmp

- Parameters:
  - inPath: 用于转换的png路径(包含文件名及后缀)
  - outPath: 转换完的bmp路径(包含文件名及后缀)
  - format: 转换成bmp的文件格式

### `compressToPNG(inputFilePath:outputFilePath:completion:)`

压缩png图片质量

- Parameters:
  - inputFilePath: 输入文件路径
  - outputFilePath: 输出文件路径

### `makeEpoFile(dirPath:epoFilePath:completion:)`

创建EPO.DAT文件

- Parameters:
  - dirPath: 存放要制作epo文件的目录
  - epoFilePath: 制作的epo文件存放路径

### `gpsInitType(motionTypeIn:completion:)`

gps运动后优化轨迹,根据运动类型初始化速度阈值，若输入其他运动类型，会导致无运动轨迹

- Parameters:

  - motionTypeIn: 运动类型

    1、户外走路 = 52, 走路 = 1, 徒步 = 4, 运动类型设为0

    2、户外跑步 = 48, 跑步 = 2, 运动类型设为1

    3、户外骑行 = 50, 骑行 = 3, 运动型性设为2

  - completion:

### `gpsAlgProcessRealtime(json:completion:)`

gps数据实时处理入口,需要对输出的数据进行判断，若纬度为-180则为错误值，不应该输出

- Parameters:
  - json: { lon,经度,数据类型double
    lat,纬度,数据类型double
     timestamp,时间戳,数据类型int
     accuracy,定位精度,数据类型double
     gpsaccuracystatus,定位等级，0 = 定位未知, 1 = 定位好, 2 = 定位差,数据类型int }
  - completion:

### `gpsSmoothData(json:completion:)`

平滑数据

- Parameters:
  - json: {lat,纬度数组,长度为len,数据类型double
    lon,经度数组,长度为len,数据类型double len,数据长度}
  - completion: 结果保存在数组lat和lon中

### `logPath(completion:)`

获取log根路径

### `currentDevicePath(completion:)`

获取当前设备缓存根路径

### `exportLog(completion:)`

导出日志 返回压缩后日志zip文件绝对路径

### `lastConnectDevice(completion:)`

获取最后连接的设备(json)

### `loadDeviceExtListByDisk(sortDesc:completion:)`

获取连接过的设备列表(List[json])



## 示例

Swift:

```swift
sdk.tool.compressToPNG(inputFilePath: "i.png", outputFilePath: "o.png") { rs in
   // 压缩成功或失败
}
```

Kotlin:

```kotlin
sdk.tool.compressToPNG("i.png", "o.png") {
    // 压缩成功或失败
}
```

