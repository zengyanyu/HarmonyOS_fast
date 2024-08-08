import MTCartItem from './MTCartItem'

@Component
struct MTCart {
  build() {
    Column() {
      Column() {
        Row() {
          Text('购物车')
            .fontSize(12)
            .fontWeight(600)
          Text('清空购物车')
            .fontSize(12)
            .fontColor($r("app.color.search_font_color"))
        }
        .width('100%')
        .height(40)
        .justifyContent(FlexAlign.SpaceBetween)
        .border({ width: { bottom: 0.5 }, color: $r("app.color.left_back_color") })
        .margin({ bottom: 10 })
        .padding({ left: 15, right: 15 })

        List({ space: 30 }) {
          ForEach([1, 2, 3, 4], () => {
            ListItem() {
              MTCartItem()
            }
          })
        }
        .divider({
          strokeWidth: 0.5,
          color: $r("app.color.left_back_color")
        })
        .padding({ left: 15, right: 15, bottom: 100 })
      }
      .backgroundColor($r("app.color.white"))
      .borderRadius({
        topLeft: 16,
        topRight: 16
      })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.End)
    .backgroundColor('rgba(0,0,0,0.5)')
  }
}

export default MTCart