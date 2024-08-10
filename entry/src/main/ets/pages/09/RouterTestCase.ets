import { promptAction, router } from '@kit.ArkUI'

@Entry
@Component
struct RouterTestCase {
  // 生命周期,实例化方法
  aboutToAppear(): void {
    const param = router.getParams() as object
    // promptAction.showToast({
    //   // 类型是小写的object是可以这么取值的
    //   message: param['a'] + '_' + param['b']
    // })
    promptAction.showToast({
      message: 'RouterB页面返回,aboutToAppear'
    })
  }

  // 显示页面
  onPageShow(): void {
    promptAction.showToast({
      message: 'RouterB页面返回,加载onPageShow'
    })
  }

  build() {
    Column({ space: 10 }) {
      Text('主要页面')
        .fontWeight(FontWeight.Bold)
        .fontSize(60)

      Button('跳转')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/09/RouterTestCase',
            params: {
              a: 1,
              b: 2
            }
          })
        })

      Button("清空页面栈")
        .onClick(() => {
          router.clear() // 清空之前的页面栈
        })

      Button("获取State")
        .onClick(() => {
          AlertDialog.show({
            message: JSON.stringify(router.getState())
          })
        })
      Button("获取Length")
        .onClick(() => {
          AlertDialog.show({
            message: JSON.stringify(router.getLength())
          })
        })

      Button("去B")
        .onClick(() => {
          router.pushUrl({
            url: 'pages/09/RouterB',
          })
        })

      // Button("跳转到OneBackPressCase页面")
      //   .onClick(() => {
      //     router.pushUrl({
      //       url: 'pages/09/OnBackPressCase',
      //     })
      //   })

      Button("去测试返回BackPage")
        .onClick(() => {
          router.pushUrl({
            url: 'pages/09/BackPage',
          })
        })
      Button("去测试返回OnBackPressCase")
        .onClick(() => {
          router.pushUrl({
            url: 'pages/09/OnBackPressCase',
          })
        })

      Button("去Hsp包的支付页面")
        .onClick(() => {
          router.pushUrl({
            url: '@bundle:com.example.myharmonycode/PayHsp/ets/pages/WeChatPay',
            params: {
              payPrice: 100
            }
          })
          // router.pushUrl({
          //   url: 'pages/09/BackPage',
          // })
        })

    }
    .height('100%')
    .width('100%')
  }
}