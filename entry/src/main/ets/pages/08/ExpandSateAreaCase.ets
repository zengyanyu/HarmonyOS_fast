@Entry
@Component
struct ExpandSateAreaCase {
  build() {
    Column() {
      Text("测试安全区")
        .fontSize(40)
        .fontColor(Color.White)
        .fontWeight(FontWeight.Bold)
    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Brown)
    // 扩大安全区
    .expandSafeArea()
  }
}