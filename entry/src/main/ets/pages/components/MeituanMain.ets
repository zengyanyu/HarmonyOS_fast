@Entry
@Component
export struct MeituanMain {
  build() {
    Column() {

    }.width('100%')
    .backgroundColor(Color.Orange)
    // layoutWeight表示除了设置之外的宽高之后，填充所剩下的；
    .layoutWeight(1)
  }
}