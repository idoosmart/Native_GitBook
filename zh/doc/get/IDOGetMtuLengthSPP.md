# 获取spp mtu长度(Android)

* [IDOSppMtuModel](../model/IDOSppMtuModel.md)

### 示例

Kotlin

```kotlin
Cmds.getMtuLengthSPP().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOSppMtuModel
    }else {
        // 失败
    }
}
```

