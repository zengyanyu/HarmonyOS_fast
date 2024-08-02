@Entry
@Component
struct RowLayout {
  build() {
    Row({ space: 20 }) {
      Row() {
      }
      .width(100)
      .height(200)
      .backgroundColor(Color.Pink)

      Row() {
      }
      .width(100)
      // .height(200)
      .aspectRatio(0.5)
      .backgroundColor(Color.Blue)

      Row() {
      }
      .width(100)
      .height(200)
      .backgroundColor(Color.Gray)

    }
    // 主轴--x
    .justifyContent(FlexAlign.SpaceEvenly)
    // 副轴--y
    .alignItems(VerticalAlign.Top)
    .width('100%')
    .height('100%')
  }
}