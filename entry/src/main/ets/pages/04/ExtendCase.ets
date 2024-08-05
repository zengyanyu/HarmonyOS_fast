@Entry
@Component
struct ExtendCase {
  build() {
    Column({ space: 20 }) {
      Button("微信支付")
        .payBtnStyle("#00b961")
      Button("微信支付")
        .payBtnStyle("#00b961")
      Button("微信支付")
        .payBtnStyle(Color.Blue)
      Button("微信支付")
        .payBtnStyle("#00b961")
      Button("微信支付")
        .payBtnStyle("#00b961")
      Button("微信支付")
        .payBtnStyle(Color.Grey)
      Button("微信支付")
        .payBtnStyle("#00b961")
      Button("微信支付")
        .payBtnStyle(Color.Orange)
    }
    .height('100%')
    .width('100%')
    .padding(20)
  }
}

// 只能全局函数  不允许倒入导出
@Extend(Button)
function payBtnStyle(bgColor: ResourceColor) {
  .type(ButtonType.Normal)
  .fontColor("#fff8f4f4")
  .width("100%")
  .height(50)
  .borderRadius(4)
  .backgroundColor(bgColor)
  .fontWeight(FontWeight.Bold)
}