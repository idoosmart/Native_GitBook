# 消息图标
### 功能概述

iOS 和 Android 实现消息图标动态更新接口。iOS当监听到消息通知，固件返回应用包名再从后台获取APP信息，下载对应的图标经过裁剪后下发到固件中，应用名称也下发到固件；Android启动时获取系统中所有的应用信息，当Android app 接收消息通知时，根据消息类型裁剪对应的应用图标，并下发给固件。



<div style ="display:flex;justify-content: flex-end;" >
  <button class="section" target="section1" show="swift" hide="swift"></button>
  <div style="width:10px"></div>
  <button class="section" target="section2" show="kotlin" hide="kotlin"></button>
</div>

# `MessageIconInterface`

### 属性

### `updating`

是否更新中

### `iconDirPath`

获取icon图片存放目录地

### 方法

### `getDefaultAppInfo(completion:)`

设备支持默认APP信息集合

- Parameters:
  - completion: 返回APP信息结果
    - items:  [IDOAppIconItemModel]() 集合

### `firstGetAppInfo(force:completion:)`

android 已安装所有app信息集合

- Parameters:
  - force： Android强制更新 消息图标和名字
  - completion: 返回APP信息结果
    - items:  [IDOAppIconItemModel]() 集合

### `getCacheAppInfo(completion:)`

获取缓存APP信息

- Parameters:
  - completion: 返回APP信息结果
    - model: [IDOAppIconInfoModel]()

### `resetIconInfoData(macAddress:deleteIcon:completion:)`

 重置APP图标信息（删除本地沙盒缓存的图片）

-  Parameters:

  -  macAddress: 需要清除数据的MAC地址

  - deleteIcon: 是否删除icon 图片文件，默认删除
  - completion: 删除状态

<!--sec data-title="swift" data-id="section1" data-show=true ces-->

### `iOSConfig(countryCode:baseUrlPath:appKey:language:)`

iOS 配置信息

- Parameters:
  - countryCode: 国家编码 （如：CN、US）
  - baseUrlPath: 缓存服务器地址
  - appKey：后台请求分配 appKey
  - language：语言单位

<!--endsec-->

<!--sec data-title="kotlin" data-id="section2" data-show=false ces-->

### `androidSendMessageIconToDevice(eventType:completion:)`

Android 当有收到通知时下发消息图标到设备

-  Parameters:

   - eventType: 事件类型

   - completion: 下发状态

<!--endsec-->



## 示例

Swift

```swift
/// ios 配置信息
/// 参数只供参考，根据实际情况赋值
// 不配置则直接从苹果服务器获取（会比较慢），建议自己后台中转缓存一下
sdk.messageIcon.iOSConfig(countryCode: "US",seUrlPath: "https://cn-user.idoocloud.com/api/ios/lookup/get", appKey: "800a6444f9c0433c8e88741b6ddf1443", language: 2)

/// 进入开关控制页面获取APP名字和图标
sdk.messageIcon.firstGetAllAppInfo(force: false) { items in
  
}

/// 获取默认开启通知APP
sdk.messageIcon.getDefaultAppInfo { items in
  
}

/// 解绑设备删除数据
sdk.messageIcon.resetIconInfoData(macAddress: "", deleteIcon: true) { success in
  
}
```



Kotlin:

```kotlin
// 进入开关控制页面获取APP名字和图标
sdk.messageIcon.firstGetAllAppInfo(force = false) { items ->
  // 在这里处理返回的数据
}

// 获取默认开启通知APP
sdk.messageIcon.getDefaultAppInfo { items ->
  // 在这里处理返回的数据
}

// 解绑设备删除数据
sdk.messageIcon.resetIconInfoData(macAddress = "", deleteIcon = true) { success ->
  // 在这里处理返回的结果
}

// 每次下发通知消息，执行事件类型 
// 事件类型就是上面items获取到的，事件类型和每个APP应用关联的，所以告诉事件类型就知道哪个应用的通知
// 下发这个事件类型，为判断APP图标是否更新到，如果未更新APP图标，SDK则会下发对应的APP图标
sdk.messageIcon.androidSendMessageIconToDevice(eventType = type) { success ->
  
}
```







