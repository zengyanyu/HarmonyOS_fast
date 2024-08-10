import { router } from '@kit.ArkUI'

@Entry
@Component
struct RouterB {
  build() {
    Column({ space: 10 }) {
      Button("去A")
        .onClick(() => {
          router.pushUrl({
            url: 'pages/09/RouterTestCase',
          }, router.RouterMode.Single) // 设置路由为单例模式
        })
      Button("去返回")
        .onClick(() => {
          router.pushUrl({
            url: 'pages/09/BackPage',
          })
        })

      Button("返回back")
        .onClick(() => {
          // 只会调用RouterTestCase页面的onPageShow方法,不会重新加载aboutToAppear
          router.back();
        })
    }
    .height('100%')
    .width('100%')
  }
}