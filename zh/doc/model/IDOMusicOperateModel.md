# `IDOMusicOperateModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| operateType | Int | 操作类型：<br/>0：无效操作<br/>1：删除音乐<br/>2：添加音乐<br/>3：删除文件夹<br/>4：添加文件夹<br/>5：修改播放列表<br/>6：导入播放列表<br/>7：删除播放列表中的音乐 |
| version | Int | 固件SDK卡信息<br/>总空间 |
| errCode | Int | 0：成功；非零：失败 |
| musicId | Int | 添加音乐成功返回音乐id |
| folderItems | List<IDOMusicFolderItem> | [IDOMusicFolderItem](IDOMusicFolderItem.md) 集合 |

