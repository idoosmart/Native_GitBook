# `IDOMusicInfoModel`

| Properties   | Type                     | Description                                                  |
| ------------ | ------------------------ | ------------------------------------------------------------ |
| allMemory    | Int                      | Firmware SDK card information<br/>Total space<br/>Unit: Byte |
| usedMemory   | Int                      | Firmware SDK card information<br/>Currently used space (in bytes)<br/>Uint:Byte |
| usefulMemory | Int                      | Firmware SDK card information<br/>Available space<br/>Unit: Byte |
| folderItems  | List<IDOMusicFolderItem> | [IDOMusicFolderItem](IDOMusicFolderItem.md) collection       |
| musicItems   | List<IDOMusicItem>       | [IDOMusicItem](IDOMusicItem.md) collection                   |
