# `IDOMusicOperateModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| operateType | Int | Operation type:<br/>0: Invalid operation<br/>1: Delete music<br/>2: Add music<br/>3: Delete folder<br/>4: Add folder< br/>5: Modify the playlist<br/>6: Import the playlist<br/>7: Delete the music in the playlist|
| version | Int | Firmware SDK card information<br/>Total space|
| errCode | Int | 0: success; non-zero: failure |
| musicId | Int | Add music successfully and return music id |
| folderItems | List<IDOMusicFolderItem> | [IDOMusicFolderItem](IDOMusicFolderItem.md) Collection |
