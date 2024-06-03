# Binding status 

### IDOBindStatus

| Type | Description |
| ---------- | ------------ |
| failed | Binding failed |
| successful | Binding successful |
| binded | Already bound |
| needAuth | Need authorization code to bind |
| refusedBind | Refused to bind |
| wrongDevice | Binding wrong device |
| authCodeCheckFailed | Authorization code verification failed |
| canceled | Cancel binding |
| failedOnGetFunctionTable | Binding failed (failed to obtain the function table) |
| failedOnGetDeviceInfo | Binding failed (failed to obtain device information) |
| timeout | Binding timeout (supports this Function only for devices) |
| agreeDeleteDeviceData | New account binding, user confirms deletion of device data (only for devices that support this function) |
| denyDeleteDeviceData | New account binding, user does not delete device data, binding fails (supports this function) function only) |
| timeoutOnNewAccount | New account binding, the user does not choose, the device times out (dedicated to devices that support this function) |
| needConfirmByApp | The device agrees to the pairing (binding) request and waits for the APP to issue the pairing result ( Exclusively for devices that support this function) |
