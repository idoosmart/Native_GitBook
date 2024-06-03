# 消息图标实体



IDOAppIconInfoModel

| 参数        | 说明         | 类型 | 备注                    |
| ----------- | ------------ | ---- | ----------------------- |
| version     | 版本号       | Int  |                         |
| iconWidth   | icon宽度     | Int  |                         |
| iconHeight  | icon高度     | Int  |                         |
| colorFormat | 颜色格式     | Int  |                         |
| blockSize   | 压缩块大小   | Int  |                         |
| totalNum    | 总个数       | Int  |                         |
| items       | 包名详情集合 | list | IDOAppIconItemModel集合 |

IDOAppIconItemModel

| 参数              | 说明                 | 类型   | 备注                                                         |
| ----------------- | -------------------- | ------ | ------------------------------------------------------------ |
| evtType           | 事件类型             | Int    |                                                              |
| packName          | 应用包名             | String |                                                              |
| appName           | 应用名称             | String |                                                              |
| iconLocalPath     | icon 沙盒小图标地址  | String | (固件使用)                                                   |
| itemId            | 每个包名给一个id     | Int    |                                                              |
| msgCount          | 消息收到次数         | Int    | 废弃                                                         |
| iconCloudPath     | icon 云端地址        | String |                                                              |
| state             | 消息图标更新状态     | Int    | 0：不需要更新 1：需要更新icon ，<br>2：需要更新app名，3：icon和app都需要更新 |
| iconLocalPathBig  | icon 沙盒大图标地址  | String | (app使用)                                                    |
| countryCode       | 国家编码             | String |                                                              |
| appVersion        | 应用版本号           | String |                                                              |
| isDownloadAppInfo | 是否已经下载APP信息  | Bool   |                                                              |
| isUpdateAppName   | 是否已经更新应用名称 | Bool   |                                                              |
| isUpdateAppIcon   | 是否已经更新应用图标 | Bool   |                                                              |
| isDefault         | 是否为默认应用       | Bool   |                                                              |

IDOAppIconInfoModel

| 参数        | 说明         | 类型 | 备注                    |
| ----------- | ------------ | ---- | ----------------------- |
| version| 版本号| Int |                         |
| iconWidth | icon宽度     | Int  |                         |
| iconHeightasdfasdf  | icon高度     | Int  |                         |
| colorFormat | 颜色格式     | Int  |                         |
| blockSize   | 压缩块大小   | Int  |                         |
| totalNum    | 总个数       | Int  |                         |
| items       | 包名详情集合 | list | IDOAppIconItem集合 |