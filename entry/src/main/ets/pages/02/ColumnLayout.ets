@Entry
@Component
struct ColumnLayout {

  build() {
    Column({ space: 20 }) {
      Row() {
      }
      .width(200)
      .height(100)
      .backgroundColor(Color.Pink)

      Row() {
      }
      .width(200)
      .height(100)
      .backgroundColor(Color.Blue)

      Row() {
      }
      .width(200)
      .height(100)
      .backgroundColor(Color.Gray)

    }
    // 主轴--y
    .justifyContent(FlexAlign.SpaceAround)
    // 副轴--x
    .alignItems(HorizontalAlign.Start)
    .alignItems(HorizontalAlign.Center)// 默认值
    .alignItems(HorizontalAlign.End)
    .width('100%')
    .height('100%')
  }
}