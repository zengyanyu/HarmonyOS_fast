@Entry
@Component
struct PageB {
  build() {
    Column() {
      Image($r("app.media.app_icon"))
        .width("100%")
        .aspectRatio(1)
        .sharedTransition("zyy", {
          duration: 500
        })
      Text("拼夕夕")
        .fontSize(40)
    }
    .height('100%')
    .width('100%')
  }
}