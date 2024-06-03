### Device control APP camera 


**json field received by App**: 

| Field name | Field type | Field description | 
| ------ | -------- | ------------------------------------------------------------- |
| type | int | 0: Open the camera<br />1: Click to start taking pictures<br />2: End taking pictures<br />3: Request system pairing|
 
`Example: `

```c
{
 "type":0
}
```

**json field issued by App**:

| Field name| Field type| Field description| 
| ------ | -------- | -------------------------------------------------------------- |
| type | int | 0: Open the camera<br />1: Click to start taking photos<br />2: End of taking photos<br />3: Request system pairing|

`Example: `

```c
{
 "type":0
}
```
