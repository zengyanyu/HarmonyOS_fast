import { promptAction } from '@kit.ArkUI'
import { FoodItem } from '../viewmodels'

@Component
struct MTBottom {
  @Consume
  showCart: boolean
  @Consume
  userCart: FoodItem[]

  // 总数量
  getAllCount() {
    return this.userCart.reduce((prevValue: number, item: FoodItem) => {
      return prevValue + item.count
    }, 0)
  }

  // 总价格
  getAllPrice() {
    return this.userCart.reduce((prevValue: number, item: FoodItem) => {
      return prevValue + item.count * item.price
    }, 0).toFixed(2)
  }

  build() {
    Row() {
      Row() {
        // 小哥的显示
        Badge({
          value: this.getAllCount().toString(),
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
            Span(this.getAllPrice())
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
          .onClick(() => {
            // 去结算
            promptAction.showToast({ message: '去结算' })
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