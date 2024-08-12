@Entry
@Component
struct AnimateCase {
  @State
  rWidth: number = 100
  @State
  anObj: AnimateParam = {
    duration: 1000,
    playMode: PlayMode.AlternateReverse,
    // 设置为-1,表示无限循环
    iterations: -1
  }

  build() {
    Column({ space: 20 }) {
      Row() {
        Button("停止动画")
          .onClick(() => {
            this.anObj = {
              duration: 0,
              iterations: 0,
              playMode: PlayMode.Normal
            }
          })
      }
      .width("100%")
      .height(200)
      .backgroundColor(Color.Blue)

      Row()
        .width(this.rWidth)
        .aspectRatio(1)
        .backgroundColor(Color.Pink)
        .animation(this.anObj)

      Button("变大")
        .onClick(() => {
          this.rWidth += 100
        })

      Button("缩小")
        .onClick(() => {
          this.rWidth -= 100
        })
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }
}