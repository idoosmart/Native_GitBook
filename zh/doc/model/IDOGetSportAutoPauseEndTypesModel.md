# IDOGetSportAutoPauseEndTypesModel

查询运动自动暂停/结束支持的运动类型回复 Model。

## 字段

| 属性 | JSON Key | 类型 | 说明 |
|------|----------|------|------|
| `operate` | `operate` | Int | 回显请求的 operate |
| `errorCode` | `error_code` | Int | `0` 成功 |
| `autoPauseItems` | `auto_pause_items` | `[[IDOSportAutoPauseEndTypeItem](IDOSportAutoPauseEndTypeItem.md)]?` | 自动暂停支持的运动类型 |
| `autoEndItems` | `auto_end_items` | `[[IDOSportAutoPauseEndTypeItem](IDOSportAutoPauseEndTypeItem.md)]?` | 自动结束支持的运动类型 |

## operate 常量

| 常量 | 值 | 说明 |
|------|-----|------|
| `OPERATE_PAUSE` / `operatePause` | `1` | 获取自动暂停列表 |
| `OPERATE_END` / `operateEnd` | `2` | 获取自动结束列表 |
| `OPERATE_BOTH` / `operateBoth` | `3` | 同时获取 |

## 示例 JSON

```json
{
  "operate": 3,
  "error_code": 0,
  "auto_pause_items": [{"sport_type": 2}],
  "auto_end_items": [{"sport_type": 1}]
}
```
