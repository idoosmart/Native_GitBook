# Error code description

## Functional Overview

The errorCode error code is used as the basis for determining the status of the entire SDK. When errorCode is equal to 0, it is successful, and other values are failure.

Positive number: Firmware level status code (sdk will return to the application layer unchanged)

Negative number: SDK status code

### Corresponding error code table

| Error code | Description                                                |
| ---------- | ---------------------------------------------------------- |
| 0          | Command execution successful                               |
| 1          | Missing SVC handler                                        |
| 2          | SoftDevice not enabled                                     |
| 3          | Internal error                                             |
| 4          | The memory required for the operation is not available     |
| 5          | Not found                                                  |
| 6          | Unsupported operation                                      |
| 7          | Invalid parameter                                          |
| 8          | Invalid state, no operation is allowed in this state       |
| 9          | Invalid length                                             |
| 10         | Invalid flag                                               |
| 11         | Invalid data                                               |
| 12         | Invalid data size                                          |
| 13         | Operation timeout                                          |
| 14         | Null pointer                                               |
| 15         | Prohibited operations                                      |
| 16         | Wrong memory address                                       |
| 17         | Busy                                                       |
| 18         | Maximum number of connections exceeded                     |
| 19         | Insufficient resources required for operation              |
| 20         | Bt Bluetooth upgrade error                                 |
| 21         | Insufficient space required for operation                  |
| 22         | Battery low                                                |
| 23         | Invalid file name/format                                   |
| 24         | Enough space but needs organizing                          |
| 25         | Space being organized                                      |
| -1         | Cancel                                                     |
| -2         | Failure                                                    |
| -3         | The command is already in the queue                        |
| -4         | When executing quick configuration, the command is ignored |
| -5         | The device is in ota mode                                  |
| -6         | Device not connected                                       |
| -7         | The instruction being executed was interrupted             |
| -99        | JSON parsing failed                                        |
