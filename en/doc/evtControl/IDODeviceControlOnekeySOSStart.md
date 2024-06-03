## The device notifies the APP that one-click call starts 


**json field received by the App**: 

| Field name | Field type | Field description | 
| ------- | -------- | ---------------------------- |
| status | int | Status: 0: start, 1: end|
 | timeout | int | Timeout unit seconds |

` Example: `

```c
{
 "status":0,
 "timeout":30,
}
```
