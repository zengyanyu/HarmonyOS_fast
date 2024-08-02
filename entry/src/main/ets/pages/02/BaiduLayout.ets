@Entry
@Component
struct BaiduLayout {
  build() {
    Column({ space: 15 }) {
      Image('https://p3.itc.cn/q_70/images03/20211117/1270baf1c2f84fa19a99ef82c52d454c.png')
        .height(80)
        .width('80%')
      Row() {
        TextInput()
          .border({
            color:'#bcbcbc',
            width: {
              top: 2,
              left: 2,
              bottom: 2
            }
          })
          .borderRadius({
          topLeft: 5,
          topRight: 0,
          bottomLeft: 5,
          bottomRight: 0
        }).height(40)
          .layoutWeight(1)
        Button("百度一下").type(ButtonType.Normal).borderRadius({
          topRight:5,
          bottomRight:5
        })
      }.margin(10)
    }
    .width('100%')
    .height('100%')
    // .backgroundColor(Color.Pink)
    .justifyContent(FlexAlign.Center)
  }
}