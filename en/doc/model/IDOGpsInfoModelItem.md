# `IDOGpsInfoModelItem`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| type | Int | Training type<br/>186: Rest plan<br/>187: Outdoor running plan<br/>188: Indoor running plan<br/>189: Indoor fitness plan|
| num | Int | Number of movements <br/>Note: The number of actions during rest is zero, and the number of actions during other actions is non-zero|
| items | List<IDOItemItem> | [IDOItemItem](IDOItemItem.md) collection |
