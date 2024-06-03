# Utility methods

# `ToolsInterface`

## method

### `png2Bmp(inPath:outPath:format:completion:)`

Image conversion format png->bmp

- Parameters:
   - inPath: png path used for conversion (including file name and suffix)
   - outPath: converted bmp path (including file name and suffix)
   - format: Convert to bmp file format

### `compressToPNG(inputFilePath:outputFilePath:completion:)`

Compressed png image quality

- Parameters:
   - inputFilePath: input file path
   - outputFilePath: output file path

### `makeEpoFile(dirPath:epoFilePath:completion:)`

Create EPO.DAT file

- Parameters:
   - dirPath: The directory where the epo file is to be created
   - epoFilePath: The storage path of the created epo file

### `gpsInitType(motionTypeIn:completion:)`

After gps movement, the trajectory is optimized and the speed threshold is initialized according to the movement type. If other movement types are entered, there will be no movement trajectory.

- Parameters:

   - motionTypeIn: motion type

     1. Outdoor walking = 52, walking = 1, hiking = 4, exercise type set to 0

     2. Outdoor running = 48, running = 2, sports type set to 1

     3. Outdoor riding = 50, cycling = 3, and sportiness set to 2

   - completion:

### `gpsAlgProcessRealtime(json:completion:)`

The entrance to real-time processing of gps data requires judgment on the output data. If the latitude is -180, it is an error value and should not be output.

- Parameters:
   - json: { lon, longitude, data type double
     lat, latitude, data type double
      timestamp, timestamp, data type int
      accuracy, positioning accuracy, data type double
      gpsaccuracystatus, positioning level, 0 = unknown positioning, 1 = good positioning, 2 = poor positioning, data type int }
   - completion:

### `gpsSmoothData(json:completion:)`

smooth data

- Parameters:
   - json: {lat, latitude array, length len, data type double
     lon, longitude array, length len, data type double len, data length}
   - completion: the result is saved in the arrays lat and lon

### `logPath(completion:)`

Get log root path

### `currentDevicePath(completion:)`

Get the current device cache root path

### `exportLog(completion:)`

Export log Returns the absolute path of the compressed log zip file

### `lastConnectDevice(completion:)`

Get the last connected device (json)

### `loadDeviceExtListByDisk(sortDesc:completion:)`

Get the list of connected devices (List[json])



## Example

Swift:

```swift
sdk.tool.compressToPNG(inputFilePath: "i.png", outputFilePath: "o.png") { rs in
    // Compression success or failure
}
```

Kotlin:

```kotlin
sdk.tool.compressToPNG("i.png", "o.png") {
     // Compression success or failure
}
```