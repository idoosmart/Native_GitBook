# `IDOGetSportAutoPauseEndTypesModel`

Response model for querying sport types that support auto-pause / auto-end.

## Fields

| Property | JSON Key | Type | Description |
|----------|----------|------|-------------|
| `operate` | `operate` | Int | Echo of the requested `operate` |
| `errorCode` | `error_code` | Int | `0` means success |
| `autoPauseItems` | `auto_pause_items` | `[[IDOSportAutoPauseEndTypeItem](IDOSportAutoPauseEndTypeItem.md)]?` | Sport types supporting auto-pause |
| `autoEndItems` | `auto_end_items` | `[[IDOSportAutoPauseEndTypeItem](IDOSportAutoPauseEndTypeItem.md)]?` | Sport types supporting auto-end |

## `operate` constants

| Constant | Value | Description |
|----------|-------|-------------|
| `OPERATE_PAUSE` / `operatePause` | `1` | Get auto-pause list |
| `OPERATE_END` / `operateEnd` | `2` | Get auto-end list |
| `OPERATE_BOTH` / `operateBoth` | `3` | Get both lists |

## Example JSON

```json
{
  "operate": 3,
  "error_code": 0,
  "auto_pause_items": [{"sport_type": 2}],
  "auto_end_items": [{"sport_type": 1}]
}
```
