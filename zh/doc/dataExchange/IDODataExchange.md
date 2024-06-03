# 数据交换功能
### 功能概述

当在App发起运动时，手环会从App产生的运动数据计算心率和卡路里返回App实现数据交换； 当手环发起运动时，手环产生的运动数据定时发送到App，实时展示运动数据。交换数据是以时间作为唯一参照，交换过程需要通过运动开始时间判断当前活动数据，如果时间对应不了，则无法交换数据。

# `ExchangeDataInterface`

### 属性

### `supportV3ActivityExchange`

获取是否支持v3运动数据交换 

### [`status`](IDOExchangeStatus.md)

交换数据状态

### 方法

### `appExec(type:)`

app执行数据交换

- Parameters:
  -  type: app执行数据交换实体 [IDOAppExecType](IDOAppExecType.md)

### `appReplyExec`(type:)

ble发起运动 ble执行数据交换 app回复

- Parameters:
  -  type: app回复数据实体 [IDOAppReplyType](IDOAppReplyType.md)

### `getLastActivityData`( )

多运动数据最后一次数据获取

- Parameters:
  -  completion: 命令执行回调
    - code: 错误码 0为成功，非0不成功
    - model: 多运动数据实体 [IDOAppActivityDataV3ExchangeModel](IDOAppActivityDataV3ExchangeModel.md)

### `getActivityHrData(completion:)`

多运动获取一分钟心率数据

- Parameters:
  -   completion: 命令执行回调
    - code: 错误码 0为成功，非0不成功
    
    - model: 心率数据实体 [IDOAppHrDataExchangeModel](IDOAppHrDataExchangeModel.md)
    
      



# `IDOExchangeDataDelegate`

### 方法

### `appListenBleExec(completion:)`

ble发起运动 app监听ble

- Parameters:
  - completion: 命令执行回调
    - type: 监听ble执行数据实体 [IDOBleExecType](IDOBleExecType.md)

### `appListenAppExec(completion:)`

app执行响应

- Parameters:
  - completion: 命令执行回调
    - type: 监听app执行Ble响应实体 [IDOBleReplyType](IDOBleReplyType.md)

### `exchangeV2Data(completion:)`

交换v2数据

- Parameters:
  - completion: 命令执行回调
    - type: 监听v2数据交换实体 [IDOExchangeV2Model](IDOExchangeV2Model.md)

### `exchangeV3Data(completion:)`

交换v3数据

- Parameters:
  - completion: 命令执行回调
    - type: 监听v3数据交换实体[IDOExchangeV3Model](IDOExchangeV3Model.md)





## 示例

Swift：

```swift
//暂停运动
 let model = IDOAppPauseExchangeModel(baseModel: baseModel)
 sdk.dataExchange.appExec(model: model)

//结束运动
let model = IDOAppBleEndReplyExchangeModel(code: 0, duration: duration, calories: calories, distance: distance, baseModel: baseModel)
sdk.dataExchange.appReplyExec(type: .appBleEndReply(model))

let lastData = sdk.dataExchange.getLastActivityData()

if sdk.dataExchange.supportV3ActivityExchange {
  sdk.dataExchange.getActivityHrData()
}

sdk.dataExchange.addExchange(IDOExchangeDataDelegateImpl())

class IDOExchangeDataDelegateImpl: IDOExchangeDataOCDelegate {
    func appListenBleExec(model: NSObject) {
        if (model is IDOBleStartExchangeModel) {
            let obj = model as? IDOBleStartExchangeModel
            let sendModel = IDOBleStartReplyExchangeModel(baseModel: obj?.baseModel, operate: obj?.operate, retCode: 0)
            sdk.dataExchange.appReplyExec(model: sendModel)
        }
        else if (model is IDOBleIngExchangeModel) {
            let obj = model as? IDOBleIngExchangeModel
            let sendModel = IDOBleIngReplyExchangeModel(baseModel: obj?.baseModel, distance: obj?.distance)
            sdk.dataExchange.appReplyExec(model: sendModel)
        }
        else if (model is IDOBleEndExchangeModel) {
            let obj = model as? IDOBleEndExchangeModel
            let sendModel = IDOBleEndReplyExchangeModel(baseModel: obj?.baseModel, retCode: 0)
            sdk.dataExchange.appReplyExec(model: sendModel)
        }
        else if (model is IDOBlePauseExchangeModel) {
            let obj = model as? IDOBlePauseExchangeModel
            let sendModel = IDOBlePauseReplyExchangeModel(baseModel: obj?.baseModel, retCode: 0)
            sdk.dataExchange.appReplyExec(model: sendModel)
        }
        else if (model is IDOBleRestoreExchangeModel) {
            let obj = model as? IDOBleRestoreExchangeModel
            let sendModel = IDOBleRestoreReplyExchangeModel(baseModel: obj?.baseModel, retCode: 0)
            sdk.dataExchange.appReplyExec(model: sendModel)
        }
        else if (model is IDOAppBlePauseExchangeModel) {
            let obj = model as? IDOAppBlePauseExchangeModel
            let sendModel = IDOAppBlePauseReplyExchangeModel(baseModel: obj?.baseModel, errCode: 0)
            sdk.dataExchange.appReplyExec(model: sendModel)
        }
        else if (model is IDOAppBleRestoreExchangeModel) {
            let obj = model as? IDOAppBleRestoreExchangeModel
            let sendModel = IDOBleRestoreReplyExchangeModel(baseModel: obj?.baseModel, retCode: 0)
            sdk.dataExchange.appReplyExec(model: sendModel)
        }
        else if (model is IDOAppBleEndExchangeModel) {
            let obj = model as? IDOAppBleEndExchangeModel
            let sendModel = IDOAppBleEndReplyExchangeModel(baseModel: baseModel,
                                                           errCode: 0,
                                                           duration: obj?.duration,
                                                           calories: obj?.calories,
                                                           distance: obj?.distance)
            sdk.dataExchange.appReplyExec(model: sendModel)
        }
    }
    
    func appListenAppExec(model: NSObject) {
        if (model is IDOAppStartReplyExchangeModel) {
            let obj = model as? IDOAppStartReplyExchangeModel
            print("sport started now : \(String(describing: obj))")
            //* - 0:成功; 1:设备已经进入运动模式失败;
            //* - 2:设备电量低失败;3:手环正在充电
            //* - 4:正在使用Alexa 5:通话中
            guard obj?.retCode == 0 else {
                textConsole.text = "sport failed to launch, because of \(String(describing: obj?.retCode))"
                return
            }
            textConsole.text = "sport launched successfully"
            disposeTimer = DisposeBag()
            Observable<Int>.interval(.seconds(Constant.intervalExchangeData), scheduler: MainScheduler.instance)
                .subscribe(onNext: { [weak self] value in
                    self?.exchangeData()
                })
                .disposed(by: disposeTimer)
            
            Observable<Int>.interval(.seconds(Constant.intervalExchangeCompleteData), scheduler: MainScheduler.instance)
                .subscribe(onNext: { [weak self] value in
                    self?.exchangeCompleteData()
                })
                .disposed(by: disposeTimer)
            
            Observable<Int>.interval(.seconds(Constant.intervalExchangeHrData), scheduler: MainScheduler.instance)
                .subscribe(onNext: { [weak self] value in
                    self?.exchangeV3HrData()
                })
                .disposed(by: disposeTimer)
        }
        else if (model is IDOAppEndReplyExchangeModel) {
            let obj = model as? IDOAppEndReplyExchangeModel
            print("reply for app's end reply: \(String(describing: obj))")
        }
        else if (model is IDOAppIngReplyExchangeModel) {
            let obj = model as? IDOAppIngReplyExchangeModel
            print("data of sport from device: \(String(describing: obj))")
        }
        else if (model is IDOAppPauseReplyExchangeModel) {
            let obj = model as? IDOAppPauseReplyExchangeModel
            print("reply for app's pause cmd: \(String(describing: obj))")
        }
        else if (model is IDOAppRestoreReplyExchangeModel) {
            let obj = model as? IDOAppRestoreReplyExchangeModel
            print("reply for app's restore cmd: \(String(describing: obj))")
        }
        else if (model is IDOAppIngV3ReplyExchangeModel) {
            let obj = model as? IDOAppIngV3ReplyExchangeModel
            print("v3 data of sport from device: \(String(describing: obj))")
        }
        else if (model is IDOAppOperatePlanReplyExchangeModel) {
            let obj = model as? IDOAppOperatePlanReplyExchangeModel
            print("reply for app's operate plan cmd: \(String(describing: obj))")
        }
        else if (model is IDOAppActivityDataV3ExchangeModel) {
            let obj = model as? IDOAppActivityDataV3ExchangeModel
            print("appActivityDataReply: ${type.model}")
            duration = max(duration, obj?.durations ?? 0)
            calories = max(calories, obj?.calories ?? 0)
            distance = max(distance, obj?.distance ?? 0)
        }
        else if (model is IDOAppHrDataExchangeModel) {
            let obj = model as? IDOAppHrDataExchangeModel
            print("appActivityHrReply: \(String(describing: obj))")
        }
        else if (model is IDOAppGpsDataExchangeModel) {
            let obj = model as? IDOAppGpsDataExchangeModel
            print("appActivityGpsReply: \(String(describing: obj))")
        }
    }
    
    func exchangeV2Data(model: IDOExchangeV2Model) {
        
    }
    
    func exchangeV3Data(model: IDOExchangeV3Model) {
        
    }
}
```

kotlin:

```kotlin
//暂停运动
val model = IDOAppPauseExchangeModel(baseModel)
sdk.dataExchange.appExec(IDOAppExecType.appPause(model))

//结束运动
val model = IDOAppBleEndReplyExchangeModel(0, duration, calories, distance, baseModel)
sdk.dataExchange.appReplyExec(IDOAppReplyType.appBleEndReply(model))

sdk.dataExchange.getLastActivityData()

if (sdk.dataExchange.supportV3ActivityExchange) {
  sdk.dataExchange.getActivityHrData()
}

sdk.dataExchange.addExchange(object : IDOExchangeDataDelegate {
  override fun appListenBleExec(type: IDOBleExecType) {
    when (type) {
      is IDOBleExecType.appBleEnd -> {
        //app发起的运动 ble发起结束
        log("appBleEnd: ${type.model}")
        mHandler.removeCallbacksAndMessages(null)
        val model = IDOAppBleEndReplyExchangeModel(0, duration, calories, distance, baseModel)
        sdk.dataExchange.appReplyExec(IDOAppReplyType.appBleEndReply(model))
      }

      is IDOBleExecType.appBlePause -> {
        // app发起的运动 ble发起暂停
        log("appBlePause: ${type.model}")
        val model = IDOAppBlePauseReplyExchangeModel(0, baseModel)
        sdk.dataExchange.appReplyExec(IDOAppReplyType.appBlePauseReply(model))
      }

      is IDOBleExecType.appBleRestore -> {
        //app发起的运动 ble发起恢复
        log("appBleRestore: ${type.model}")
        val model = IDOAppBleRestoreReplyExchangeModel(0, baseModel)
        sdk.dataExchange.appReplyExec(IDOAppReplyType.appBleRestoreReply(model))
      }
      //app发起的运动 ble发起结束
      is IDOBleExecType.bleEnd -> {
        log("bleEnd: ${type.model}")
        val model = IDOBleEndReplyExchangeModel(0, baseModel)
        sdk.dataExchange.appReplyExec(IDOAppReplyType.bleEndReply(model))
      }

      is IDOBleExecType.bleIng -> {
        //ble发起的运动 ble发起交换
        log("bleIng: ${type.model}")
        val model = IDOBleIngReplyExchangeModel(0, baseModel)
        sdk.dataExchange.appReplyExec(IDOAppReplyType.bleIngReply(model))
      }

      is IDOBleExecType.bleOperatePlan -> {
        //BLE切换动作
        log("bleOperatePlan: ${type.model}")
      }

      is IDOBleExecType.blePause -> {
        //ble发起的运动 ble发起暂停
        log("blePause: ${type.model}")
        val model = IDOBlePauseReplyExchangeModel(0, baseModel)
        sdk.dataExchange.appReplyExec(IDOAppReplyType.blePauseReply(model))
      }

      is IDOBleExecType.bleRestore -> {
        //ble发起的运动 ble发起恢复
        log("bleRestore: ${type.model}")
        val model = IDOBleRestoreReplyExchangeModel(0, baseModel)
        sdk.dataExchange.appReplyExec(IDOAppReplyType.bleRestoreReply(model))
      }

      is IDOBleExecType.bleStart -> {
        //ble发起的运动 ble发起开始
        log("bleStart: ${type.model}")
        val model = IDOBleStartReplyExchangeModel(type.model.operate, 0, baseModel)
        sdk.dataExchange.appReplyExec(IDOAppReplyType.bleStartReply(model))
      }
    }
  }

  override fun appListenAppExec(type: IDOBleReplyType) {
    when (type) {
      is IDOBleReplyType.appEndReply -> {
        //app发起结束 ble回复
        log("reply for app's end reply: ${type.model}")
        mHandler.removeCallbacksAndMessages(null)
      }
      is IDOBleReplyType.appIngReply -> {
        //app发起交换 ble回复
        log("data of sport from device: ${type.model}")
      }

      is IDOBleReplyType.appIngV3Reply -> {
        //app发起交换v3回复
        log("v3 data of sport from device: ${type.model}")
      }

      is IDOBleReplyType.appOperatePlanReply -> {
        log("reply for app's operate plan cmd: ${type.model}")
      }

      is IDOBleReplyType.appPauseReply -> {
        // app发起暂停 ble回复
        log("reply for app's pause cmd: ${type.model}")
      }

      is IDOBleReplyType.appRestoreReply -> {
        //APP发起恢复
        log("reply for app's restore cmd: ${type.model}")
      }

      is IDOBleReplyType.appStartReply -> {
        //app发起开始 ble回复
        log("sport started now : ${type.model}")
        if (type.model?.retCode != 0) {
          //* - 0:成功; 1:设备已经进入运动模式失败;
          //* - 2:设备电量低失败;3:手环正在充电
          //* - 4:正在使用Alexa 5:通话中
          tv_response.text = "sport failed to launch, because of ${type.model?.retCode}"
          return
        }
        tv_response.text = "sport launched successfully"
        mHandler.postDelayed(object : Runnable {
          override fun run() {
            mHandler.postDelayed(this, INTERVAL_EXCHANGE_DATA)
            exchangeData()
          }
        }, INTERVAL_EXCHANGE_DATA)
        mHandler.postDelayed(object : Runnable {
          override fun run() {
            mHandler.postDelayed(this, INTERVAL_EXCHANGE_COMPLETE_DATA)
            exchangeCompleteData()
          }

        }, INTERVAL_EXCHANGE_COMPLETE_DATA)
        mHandler.postDelayed(object : Runnable {
          override fun run() {
            mHandler.postDelayed(this, INTERVAL_EXCHANGE_COMPLETE_DATA)
            exchangeV3HrData()
          }
        }, INTERVAL_EXCHANGE_HR_DATA)
      }

      is IDOBleReplyType.appActivityDataReply -> {
        //result for exchangeCompleteData
        val model = type.model
        log("appActivityDataReply: ${type.model}")
        duration = max(duration, model?.durations ?: 0)
        calories = max(calories, model?.calories ?: 0)
        distance = max(distance, model?.distance ?: 0)
      }

      is IDOBleReplyType.appActivityGpsReply -> {
        log("appActivityGpsReply: ${type.model}")
      }

      is IDOBleReplyType.appActivityHrReply -> {
        log("appActivityHrReply: ${type.model}")
      }
    }
  }

  override fun exchangeV2Data(model: IDOExchangeV2Model) {
//                log("exchangeV2Data: ${GsonUtil.toJson(model)}")
  }

  override fun exchangeV3Data(model: IDOExchangeV3Model) {
//                log("exchangeV3Data: ${GsonUtil.toJson(model)}")
  }

})


override fun appListenAppExec(type: IDOBleReplyType) {
  when (type) {
    is IDOBleReplyType.appEndReply -> {
      //app发起结束 ble回复
      log("reply for app's end reply: ${type.model}")
      mHandler.removeCallbacksAndMessages(null)
    }
    is IDOBleReplyType.appIngReply -> {
      //app发起交换 ble回复
      log("data of sport from device: ${type.model}")
    }

    is IDOBleReplyType.appIngV3Reply -> {
      //app发起交换v3回复
      log("v3 data of sport from device: ${type.model}")
    }

    is IDOBleReplyType.appOperatePlanReply -> {
      log("reply for app's operate plan cmd: ${type.model}")
    }

    is IDOBleReplyType.appPauseReply -> {
      // app发起暂停 ble回复
      log("reply for app's pause cmd: ${type.model}")
    }

    is IDOBleReplyType.appRestoreReply -> {
      //APP发起恢复
      log("reply for app's restore cmd: ${type.model}")
    }

    is IDOBleReplyType.appStartReply -> {
      //app发起开始 ble回复
      log("sport started now : ${type.model}")
      if (type.model?.retCode != 0) {
        //* - 0:成功; 1:设备已经进入运动模式失败;
        //* - 2:设备电量低失败;3:手环正在充电
        //* - 4:正在使用Alexa 5:通话中
        tv_response.text = "sport failed to launch, because of ${type.model?.retCode}"
        return
      }
      tv_response.text = "sport launched successfully"
      mHandler.postDelayed(object : Runnable {
        override fun run() {
          mHandler.postDelayed(this, INTERVAL_EXCHANGE_DATA)
          exchangeData()
        }
      }, INTERVAL_EXCHANGE_DATA)
      mHandler.postDelayed(object : Runnable {
        override fun run() {
          mHandler.postDelayed(this, INTERVAL_EXCHANGE_COMPLETE_DATA)
          exchangeCompleteData()
        }

      }, INTERVAL_EXCHANGE_COMPLETE_DATA)
      mHandler.postDelayed(object : Runnable {
        override fun run() {
          mHandler.postDelayed(this, INTERVAL_EXCHANGE_COMPLETE_DATA)
          exchangeV3HrData()
        }
      }, INTERVAL_EXCHANGE_HR_DATA)
    }

    is IDOBleReplyType.appActivityDataReply -> {
      //result for exchangeCompleteData
      val model = type.model
      log("appActivityDataReply: ${type.model}")
      duration = max(duration, model?.durations ?: 0)
      calories = max(calories, model?.calories ?: 0)
      distance = max(distance, model?.distance ?: 0)
    }

    is IDOBleReplyType.appActivityGpsReply -> {
      log("appActivityGpsReply: ${type.model}")
    }

    is IDOBleReplyType.appActivityHrReply -> {
      log("appActivityHrReply: ${type.model}")
    }
  }
}


override fun exchangeV2Data(model: IDOExchangeV2Model) {
           log("exchangeV2Data: ${GsonUtil.toJson(model)}")
}

override fun exchangeV3Data(model: IDOExchangeV3Model) {
           log("exchangeV3Data: ${GsonUtil.toJson(model)}")
}
```

