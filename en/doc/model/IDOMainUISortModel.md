# `IDOMainUISortModel`

| Properties   | Type                           | Description                                                  |
| ------------ | ------------------------------ | ------------------------------------------------------------ |
| errCode      | Int                            | 0: success, non-zero: failure                                |
| operate      | Int                            | operation<br/>0: invalid 1: query 2: setting                 |
| allNum       | Int                            | The number of lists currently displayed in the firmware      |
| supportItems | List<IDOMainUISortSupportItem> | [IDOMainUISortSupportItem](IDOMainUISortSupportItem.md) collection |
| items        | List<IDOMainUISortItem>        | [IDOMainUISortItem](IDOMainUISortItem.md) collection         |
| locationX    | Int                            | Horizontal axis x <br />Starts from 1                        |
| locationY    | Int                            | Vertical axis y <br />Starts from 1                          |
| sizeType     | Int                            | Icon type<br />0: Invalid <br />1: Large icon <br />2: Small icon |
| widgetsType  | Int                            | Reference widget type list                                   |

`widgets_type`
`Widget type list`

| Enumeration value | Meaning                                    |                       |
| ----------------- | ------------------------------------------ | --------------------- |
| 0                 | Invalid                                    | 1-100 are small icons |
| 1                 | Three activity rings (small icon)          |                       |
| 2                 | steps                                      |                       |
| 3                 | Latest activity                            |                       |
| 4                 | Music                                      |                       |
| 5                 | Weather                                    |                       |
| 6                 | Heart rate                                 |                       |
| 7                 | Pressure                                   |                       |
| 8                 | sleep                                      |                       |
| 9                 | Alexa                                      |                       |
| 10                | Body temperature                           |                       |
| 11                | Blood Oxygen                               |                       |
| 12                | Timer                                      |                       |
| 13                | Alarm clock                                |                       |
| 14                | Event reminder (current schedule reminder) |                       |
| 15                | Noise                                      |                       |
| 16                | Power                                      |                       |
| 17                | Telephone (Contact Person)                 |                       |
| 18                | World Time                                 |                       |

