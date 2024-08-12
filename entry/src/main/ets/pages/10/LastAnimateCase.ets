@Entry
@Component
struct LastAnimateCase {
  @State message: string = 'Hello World';
  @State
  showImage: boolean = false

  build() {
    Column({ space: 20 }) {
      if (this.showImage) {
        // Image($r("app.media.handsome"))
        //   .width(200)
        //   .aspectRatio(1)
        //   .borderRadius(100)
        //   .transition(TransitionEffect.OPACITY.animation({
        //     duration: 2000
        //   }).combine(TransitionEffect.translate({
        //     x: "-100%"
        //   })
        //     .combine(TransitionEffect.rotate({
        //       angle: -180
        //     }))
        //     .combine(TransitionEffect.scale({
        //       x: 0.1,
        //       y: 0.1
        //     }))
        //   ))

        Image($r("app.media.handsome"))
          .width(200)
          .aspectRatio(1)
          .borderRadius(100)
          .transition(TransitionEffect.asymmetric(
            TransitionEffect.OPACITY.animation({
              duration: 2000
            }).combine(TransitionEffect.translate({
              y: "100%"
            })),
            TransitionEffect.OPACITY.animation({
              duration: 2000
            }).combine(TransitionEffect.translate({
              x: "-100%"
            }))))
      }
      Button("显示隐藏")
        .onClick(() => {
          this.showImage = !this.showImage
        })
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }
}