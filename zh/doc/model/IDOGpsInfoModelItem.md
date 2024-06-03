# `IDOGpsInfoModelItem`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| type | Int | 训练类型<br/>186：休息计划<br/>187：户外跑步计划<br/>188：室内跑步计划<br/>189：室内健身计划 |
| num | Int | 动作次数<br/>注意：休息时动作次数为零，其他动作时动作次数非零 |
| items | List<IDOItemItem> | [IDOItemItem](IDOItemItem.md)集合 |
