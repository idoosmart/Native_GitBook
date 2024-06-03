### Actively notify APP SMS 


**json field sent by App**: 

| Field name | Field type | Field description | 
| ---------- | -------- | ----------------------------------- |
| is_success | int | 0app Send message Failed, 1app successfully sent the message |
| msg_ID | int | Reply ID: Each message corresponds to an ID |
| msg_type | int | Message type |
| msg_notice | int | 0 means there is no corresponding SMS reply, corresponding reply list |

` Example: `

```c
{
 "is_success":0,
 "msg_ID":1,
 "msg_type":1,
 "msg_notice":0
}
```


 **json fields received by App**: 

| Field name| Field type| Field description|
| ---------- | -------- | ------------------------------------------ |
| msg_type | int | Reply message type: incoming call SMS (1) QQ, WeChat |
| msg_ID | int | Reply ID: Each message corresponds to an ID |
| msg_notice | int | 0 means there is no corresponding SMS reply, corresponding reply list |

` Example: `

```c
{
 "msg_ID":1,
 "msg_type":1,
 "msg_notice":0
}
```

