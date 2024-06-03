# Alexa
### 功能概述

仅限支持Alexa的设备使用，使用前需确保在Alexa官方后台配置了相应的ClientID 和 ProductID

### 属性
### `isLogin`

是否已登录

### 方法
### `onLoginStateChanged(handle:)`

监听登录状态变更

### `setupAlexa(delegate:clientId:)`

配置alexa
- Parameters:
  - delegate : 代理
  - clientId: Alexa后台生成的ID

### `authorizeRequest(productId:handle:completion:)`

Alexa CBL授权
- Parameters:
  - productId: 在alexa后台注册的产品ID
  - handle: 回调Alexa认证需要打开的verificationUri和pairCode
  - completion: 授权结果
- Returns: 可取消实例

### `logout()`

退出登录



## 示例

### 配置Alexa模块

Swift:

```swift
// 配置alexa
sdk.alexa.setupAlexa(delegate: <IDOAlexaDelegate>, clientId: clientId)

// 实现代理
extension SomeClass: IDOAlexaDelegate {
  	
  	/// 获取健康数据
    func getHealthValue(valueType: IDOGetValueType) -> Int {
        return 0
    }
    
  	/// 获取心率
    func getHrValue(dataType: Int, timeType: Int) -> Int {
        return 0
    }
    
  	/// 功能控制
    ///
    /// funType 0 关闭找手机功能
    func functionControl(funType: Int) {}
}
```
Kotlin:

```kotlin
// 配置alexa
alexa.setupAlexa(this, "clientId from alexa developer account"/*only for test*/)
// implement proxy
private val delegate = object:IDOAlexaDelegate{
    /// 获取健康数据
    override fun getHealthValue(valueType: IDOGetValueType): Int {
        return 0
    }
    
    /// 获取心率
    override fun getHrValue(dataType: Int, timeType: Int): Int {
        return 0
    }
    
     // 功能控制
     //
     // funType 0 关闭找手机功能
    override fun functionControl(funType: Int) {
        TODO("Not yet implemented")
    }

}
```


### 监听登录状态

Swift:

```swift
// 监听登录
sdk.alexa.onLoginStateChanged { [weak self] state in
	switch state {
  case .logging:
      // 登录中...
  case .logined:
      // 已登录
  case .logout:
      // 未登录
  }
}

```

Kotlin:

```kotlin
// Listen for login
alexa.onLoginStateChanged {
    when(it){
        IDOAlexaLoginState.LOGGING -> {// 登录中...}
        IDOAlexaLoginState.LOGINED -> {// 已登录}
        IDOAlexaLoginState.LOGOUT -> {// 未登录}
    }
}
```



### 登录 (基于CBL)

Swift:

```swift
// 登录
let canceler = sdk.alexa.authorizeRequest(productId: "ProductId") { [weak self] verificationUri, pairCode in
	// pairCode 你的验证码, 在用户登录过程中需要展示给用户，并供验证使用
  // verificationUri 需要跳转的登录页（html)
} completion: { [weak self] rs in
    if case .successful = rs {
        // 登录成功
    } else {
        // 登录失败
    }
}

// 中途取消登录
canceler.cancel()
```

Kotlin:

```kotlin
// 登录
val canceler = alexa.authorizeRequest("ProductId", { verificationUri, pairCode ->
    // pairCode 你的验证码, 在用户登录过程中需要展示给用户，并供验证使用
   // verificationUri 需要跳转的登录页（html)
   //for example
    val dialog = AlertDialog.Builder(this@AlexaActivity).setTitle(getString(R.string.alexa_dialog_title))
        .setMessage(getString(R.string.alexa_dialog_msg).format(pairCode))
        .setPositiveButton(R.string.alexa_dialog_copy) { dialog, which ->
            val cm = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
            val mClipData = ClipData.newPlainText("Label", pairCode)
            cm.setPrimaryClip(mClipData)
            val intent = Intent(Intent.ACTION_VIEW)
            intent.data = Uri.parse(verificationUri)
            startActivity(intent)
            dialog.dismiss()
        }.setNegativeButton(R.string.alexa_dialog_cancel, { dialog, which -> dialog.dismiss() }).show()
}, { rs -> 
     if (rs == IDOAlexaAuthorizeResult.SUCCESSFUL) {
        // 登录成功
    } else {
        // 登录失败
    }
 })
//Cancel login midway
canceler.cancel()
```

### 退出

Swift:

```swift
// 退出登录
sdk.alexa.logout()
```
Kotlin:

```kotlin
// 退出登录
sdk.alexa.logout()
```

