# 根据报名与国家编码查询ios包信息<span style="font-size:14px;color:blue;">&nbsp;&nbsp;（仅供参考）</span>

### 接口地址

https://XXX/api/ios/lookup/get

### 请求方式

[GET]

### 请求头  

| 头参数 | 值                           |
| ------ | ---------------------------- |
| appKey | 800a6444f9c0........6ddf1443 |

### 请求参数

| 名称     | 类型   | 是否必填 | 描述              |
| -------- | ------ | -------- | ----------------- |
| bundleId | 字符串 | Y        | app包名           |
| country  | 字符串 | N        | 国家 (不传默认US) |

### 请求示例

/api/ios/lookup/get?bundleId=com.tencent.xin&country=cn

### 返回示例

```json
{
 "resultCount": 1,
 "results": [{
 "artworkUrl100": "https://is2-ssl.mzstatic.com/image/thumb/Purple112/v4/e2/31/9b/e2319b7f-e249-a286-888b- 7a9eb4ff873c/AppIcon-0-1x_U007emarketing-0-7-0-sRGB-85-220.png/100x100bb.jpg",
 "bundleId": "com.vk.vkclient",
 "trackName": "VK: social network, messenger",
 "trackCensoredName": "VK: social network, messenger",
 "country": "cn"
 }]
}
```

### 结果说明

| 错误码 | 描述       |
| ------ | ---------- |
| 200    | Ok         |
| 200103 | 账号不存在 |

