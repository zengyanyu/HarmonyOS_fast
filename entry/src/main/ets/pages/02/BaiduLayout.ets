@Entry
@Component
struct BaiduLayout {
  build() {
    Column({space:15}) {
      Image('https://p3.itc.cn/q_70/images03/20211117/1270baf1c2f84fa19a99ef82c52d454c.png')
        .height(60)
        .width('80%')
      Row(){
        TextInput()
          .layoutWeight(1)
        Button("百度一下")
      }
    }
    .width('100%')
    .height('100%')
    // .backgroundColor(Color.Pink)
    .justifyContent(FlexAlign.Center)

  }
}