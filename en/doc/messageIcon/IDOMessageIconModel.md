# Message icon entity 



IDOAppIconInfoModel

| Parameters | Description | Type | Remarks | 
| ----------- | ------------ | ---- | ----------------------- |
| version | version number | Int | |
| iconWidth | icon width | Int | |
| iconHeight | icon height | Int | |
| colorFormat | color format | Int | |
| blockSize | compression block size | Int | |
| totalNum | total number | Int | |
| items | package name details collection | list | IDOAppIconItemModel Collection|

IDOAppIconItemModel

| Parameters| Description| Type| Remarks|
| ------------------ | --------------------- | ------ | ------------------------------------------------------------ |
| evtType | Event type | Int | |
| packName | Application package name | String | |
| appName | Application name | String | |
| iconLocalPath | icon Sandbox small icon address | String | (firmware use) |
| itemId | Give an id to each package name | Int | |
| msgCount | Number of messages received | Int | Abandoned |
| iconCloudPath | icon cloud address | String | |
| state | message icon update status | Int | 0: No need to update 1: Need to update icon, <br>2: Need to update app name, 3: icon and app All need to be updated |
| iconLocalPathBig | icon sandbox big icon address | String | (app use) |
| countryCode | country code | String | |
| appVersion | application version number | String | |
| isDownloadAppInfo | whether it has been downloaded APP information | Bool | |
| isUpdateAppName | Whether the app name has been updated | Bool | |
| isUpdateAppIcon | Whether the app icon has been updated | Bool | |
| isDefault | Whether it is the default app | Bool |  |

IDOAppIconInfoModel

| Parameters | Description | Type | Remarks |
| ----------- | ------------ | ---- | ----------------------- |
| version| version number| Int | |
| iconWidth | icon width| Int | |
| iconHeightasdfasdf | icon height| Int | |
| colorFormat | color format | Int | |
| blockSize | Compression block size | Int | |
| totalNum | Total number | Int | |
| items | package name details collection | list | IDOAppIconItem collection |