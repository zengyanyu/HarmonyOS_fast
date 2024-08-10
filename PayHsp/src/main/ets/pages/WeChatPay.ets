import { router } from '@kit.ArkUI';

@Entry
@Component
struct WeChatPay {
  @State message: string = '微信支付页面';

  aboutToAppear(): void {
    const params = router.getParams() as object
    if (params) {
      AlertDialog.show({
        message: params["payPrice"] + ""
      })
    }
  }

  build() {
    NavDestination() {
      Text(this.message)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
    }
    .title('微信支付')
  }
}

export default WeChatPay