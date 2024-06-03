# Message icon

### Functional Overview

iOS and Android implement dynamic update interface for message icons. When iOS monitors the message notification, the firmware returns the application package name and obtains the APP information from the background. The downloaded corresponding icon is cropped and sent to the firmware, and the application name is also sent to the firmware. When Android starts, it obtains all application information in the system. , when the Android app receives a message notification, the corresponding application icon is cropped according to the message type and sent to the firmware.



<div style ="display:flex;justify-content: flex-end;" >
   <button class="section" target="section1" show="swift" hide="swift"></button>
   <div style="width:10px"></div>
   <button class="section" target="section2" show="kotlin" hide="kotlin"></button>
</div>
# `MessageIconInterface`

### Attributes

### `updating`

Is it being updated?

### `iconDirPath`

Get the directory where the icon image is stored

### method

### `getDefaultAppInfo(completion:)`

The device supports default APP information collection

- Parameters:
   - completion: return APP information results
     - items: [IDOAppIconItemModel]() collection

### `firstGetAppInfo(force:completion:)`

android installed all app information collection

- Parameters:
   - force: Android force update message icon and name
   - completion: return APP information results
     - items: [IDOAppIconItemModel]() collection

### `getCacheAppInfo(completion:)`

Get cached APP information

- Parameters:
   - completion: return APP information results
     - model: [IDOAppIconInfoModel]()

### `resetIconInfoData(macAddress:deleteIcon:completion:)`

  Reset APP icon information (delete local sandbox cached images)

- Parameters:

    - macAddress: MAC address whose data needs to be cleared

    - deleteIcon: Whether to delete icon picture files, deleted by default
    - completion: delete status

<!--sec data-title="swift" data-id="section1" data-show=true ces-->

### `iOSConfig(countryCode:baseUrlPath:appKey:language:)`

iOS configuration information

- Parameters:
   - countryCode: country code (such as: CN, US)
   - baseUrlPath: cache server address
   - appKey: background request to allocate appKey
   - language: language unit

<!--endsec-->

<!--sec data-title="kotlin" data-id="section2" data-show=false ces-->

### `androidSendMessageIconToDevice(eventType:completion:)`

Android sends a message icon to the device when a notification is received

- Parameters:

    - eventType: event type

    - completion: delivery status

<!--endsec-->



## Example

Swift

```swift
/// ios configuration information
/// Parameters are for reference only, assign values according to actual conditions
// If not configured, it will be obtained directly from the Apple server (which will be slower). It is recommended to cache it in the background.
sdk.messageIcon.iOSConfig(countryCode: "US",seUrlPath: "https://cn-user.idoocloud.com/api/ios/lookup/get", appKey: "800a6444f9c0433c8e88741b6ddf1443", language: 2)

/// Enter the switch control page to get the APP name and icon
sdk.messageIcon.firstGetAllAppInfo(force: false) { items in
  
}

/// Get the default enabled notification APP
sdk.messageIcon.getDefaultAppInfo { items in
  
}

/// Unbind the device to delete data
sdk.messageIcon.resetIconInfoData(macAddress: "", deleteIcon: true) { success in
  
}
```



Kotlin:

```kotlin
// Enter the switch control page to get the APP name and icon
sdk.messageIcon.firstGetAllAppInfo(force = false) { items ->
   // Process the returned data here
}

// Get the default enabled notification APP
sdk.messageIcon.getDefaultAppInfo { items ->
   // Process the returned data here
}

//Unbind the device and delete data
sdk.messageIcon.resetIconInfoData(macAddress = "", deleteIcon = true) { success ->
   // Process the returned results here
}

// Each time a notification message is sent, the event type is executed
//The event type is obtained from the items above. The event type is associated with each APP application, so telling the event type will know which application is notified.
// Send this event type to determine whether the APP icon has been updated. If the APP icon is not updated, the SDK will send the corresponding APP icon.
sdk.messageIcon.androidSendMessageIconToDevice(eventType = type) { success ->
  
}
```
