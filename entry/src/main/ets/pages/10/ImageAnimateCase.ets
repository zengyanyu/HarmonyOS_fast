@Entry
@Component
struct ImageAnimateCase {
  @State
  list: ImageFrameInfo[] = []
  @State
  state: AnimationStatus = AnimationStatus.Initial // 播放状态

  aboutToAppear(): void {
    this.list = [1, 2, 3, 4, 5, 6].map(item => {
      return { src: `/pages/10/images/coin${item}.png` } as ImageFrameInfo
    })
    // let arr: ImageFrameInfo[] = []
    // for (let i = 0; i < 4; i++) {
    //   arr.push({ src: `/pages/10/sha/dice_Action_${i}.png` } as ImageFrameInfo)
    // }
    // this.list = arr
    // this.list = [0, 1, 2, 3].map(item => {
    //   return { src: `/pages/10/sha/dice_Action_${item}.png` } as ImageFrameInfo
    // })
  }

  build() {
    Column({ space: 20 }) {
      ImageAnimator()
        .images(this.list)
        .width(300)
        .state(this.state)
        .iterations(-1)
        .aspectRatio(1)
        .duration(300)

      Button("播放/暂停")
        .onClick(() => {
          if (this.state !== AnimationStatus.Running) {
            this.state = AnimationStatus.Running
          } else {
            this.state = AnimationStatus.Paused
          }
        })
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }
}