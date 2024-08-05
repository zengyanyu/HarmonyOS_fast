import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct StylesCase {
  // 组件局部定义
  @Styles
  payStyle() {
    .width("100%")
    .height(50)
    .borderRadius(4)
    .backgroundColor("#ff041f12")
    .onClick(() => {
      promptAction.showToast({ message: '微信支付' })
    })
  }

  build() {
    Column({ space: 20 }) {
      Button("微信支付")
        .type(ButtonType.Normal)
        .fontColor("#fff8f4f4")
        .payStyle()
        .fontWeight(FontWeight.Bold)
      Button("微信支付")
        .type(ButtonType.Normal)
        .fontColor("#fff8f4f4")
        .payStyle()
        .fontWeight(FontWeight.Bold)
      Button("微信支付")
        .type(ButtonType.Normal)
        .fontColor("#fff8f4f4")
        .payStyle()
        .fontWeight(FontWeight.Bold)
      Button("微信支付")
        .type(ButtonType.Normal)
        .fontColor("#fff8f4f4")
        .payStyle()
        .fontWeight(FontWeight.Bold)
      Button("微信支付")
        .type(ButtonType.Normal)
        .fontColor("#fff8f4f4")
        .payStyle()
        .fontWeight(FontWeight.Bold)

    }
    .height('100%')
    .width('100%')
    .padding(20)
  }
}

//全局函数 不能用箭头函数
@Styles
function payStyle() {
  .width("100%")
  .height(50)
  .borderRadius(4)
  .backgroundColor("#00b961")
  .onClick(() => {
    promptAction.showToast({ message: '微信支付' })
  })
}