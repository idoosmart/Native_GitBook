# Incoming call/message reminder

Device call reminder, message reminder



## method

### `setV2CallEvt(contactText:phoneNumber:completion:)`

v2 sends incoming call reminder as well as the incoming call phone number and incoming call contact (implemented by some devices)

- Parameters:
   - contactText: contact name
   - phoneNumber: number
- Returns: Success or not

### `setV2NoticeEvt(type:contactText:phoneNumber:dataText:completion:)`

v2 sends information reminders and information content (implemented by some devices)

- Parameters:
   - type: information type
   - contactText: notification content
   - phoneNumber: number
   - dataText: message content
- Returns: Success or not

### `stopV2CallEvt(completion:)`

v2 sends an incoming call reminder status as the call has been answered, telling the device to stop reminding the user (implemented by some devices)

- Returns: Success or not

### `missedV2MissedCallEvt(completion:)`

v2 sends an incoming call reminder status as call rejected, telling the device to stop reminding the user (implemented by some devices)

- Returns: Success or not




## Example

Swift:

```swift
//Send incoming call reminder along with incoming phone number and incoming call contact
sdk.cmd.setV2CallEvt(contactText: "xx", phoneNumber: "33333") { rs in
    if (rs) {
      // success
    } else {
      // fail
    }
}


// Notify the phone to hang up
sdk.cmd.stopV2CallEvt { rs in

}
```

Kotlin:

```kotlin
//Send incoming call reminder along with incoming phone number and incoming call contact
sdk.cmd.setV2CallEvt("xxx", "3333") {
     if (it) {
         // success
     }else {
         // fail
     }
}


// Notify the phone to hang up
sdk.cmd.stopV2CallEvt {

}
```
