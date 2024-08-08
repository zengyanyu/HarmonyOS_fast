import { promptAction } from '@kit.ArkUI'

@Component
struct MTBottom {
  @Consume
  showCart: boolean

  build() {
    Row() {
      Row() {
        // 小哥的显示
        Badge({
          value: '0',
          position: BadgePosition.Right,
          style: {
            badgeSize: 18
          }
        }) {
          Image($r("app.media.ic_public_cart"))
            .width(47)
            .height(69)
            .position({
              y: -20
            })
        }
        .margin({
          left: 25,
          right: 10
        })
        .onClick(() => {
          // promptAction.showToast({ message: '点击小哥成功' })
          this.showCart = !this.showCart
        })

        // 显示费用
        Column() {
          Text() {
            // span imageSpan
            Span("¥")
              .fontSize(12)
            Span("0.00")
              .fontSize(24)
          }
          .fontColor($r("app.color.white"))

          Text("预估另需配送费¥5元")
            .fontColor($r("app.color.search_font_color"))
            .fontSize(14)
        }
        .alignItems(HorizontalAlign.Start)
        .layoutWeight(1)

        Text("去结算")
          .height(50)
          .width(100)
          .backgroundColor($r("app.color.main_color"))
          .textAlign(TextAlign.Center)
          .borderRadius({
            topRight: 25,
            bottomRight: 25
          })
      }
      .height(50)
      .backgroundColor($r("app.color.bottom_back"))
      .width('100%')
      .borderRadius(25)
    }
    .width('100%')
    .padding({
      left: 20,
      right: 20,
      bottom: 20
    })
  }
}

export default MTBottom