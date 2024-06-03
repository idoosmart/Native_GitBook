# 绑定状态

### IDOBindStatus

| 类型       | 说明         |
| ---------- | ------------ |
| failed   | 绑定失败 |
| successful | 绑定成功 |
| binded  | 已经绑定 |
| needAuth | 需要授权码绑定 |
| refusedBind | 拒绝绑定   |
| wrongDevice | 绑定错误设备   |
| authCodeCheckFailed | 授权码校验失败 |
| canceled | 取消绑定 |
| failedOnGetFunctionTable | 绑定失败（获取功能表失败) |
| failedOnGetDeviceInfo | 绑定失败（获取设备信息失败) |
| timeout | 绑定超时（支持该功能的设备专用） |
| agreeDeleteDeviceData | 新账户绑定，用户确定删除设备数据（支持该功能的设备专用） |
| denyDeleteDeviceData | 新账户绑定，用户不删除设备数据，绑定失败（支持该功能的设备专用） |
| timeoutOnNewAccount | 新账户绑定，用户不选择，设备超时（支持该功能的设备专用） |
| needConfirmByApp | 设备同意配对(绑定)请求，等待APP下发配对结果（支持该功能的设备专用） |
