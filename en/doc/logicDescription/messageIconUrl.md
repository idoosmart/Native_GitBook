# Query ios package information based on registration and country code <span style="font-size:14px;color:blue;"> (for reference only)</span>

### Interface address 

https://XXX /api/ios/lookup/get

### Request method 

[GET]

### Request header 

| Header parameters | Value | 
| ------ | ----------------------------- |
| appKey | 800a6444f9c0.....6ddf1443 |

### Request Parameters

| Name| Type| Is it required| Description|
| -------- | ------ | -------- | ----------------- |
| bundleId | String | ?bundleId=com.tencent.xin&country=cn

### Return example

```json
{
 "resultCount": 1,
 "results": [{
 "artworkUrl100": "https://is2 -ssl.mzstatic.com/image/thumb/Purple112/v4/e2/31/9b/e2319b7f-e249-a286-888b- 7a9eb4ff873c/AppIcon-0-1x_U007emarketing-0-7-0-sRGB-85-220.png /100x100bb.jpg",
 "bundleId": "com.vk.vkclient",
 "trackName": "VK: social network, messenger",
 "trackCensoredName": "VK: social network, messenger",
 "country ": "cn"
 }]
}
```

### Result description

| Error code| Description|
| ------ | ---------- |
 | 200 | Ok |
| 200103 | Account does not exist |

