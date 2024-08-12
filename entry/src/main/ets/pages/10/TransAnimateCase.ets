@Entry
@Component
struct TransAnimateCase {
  @State
  showCart: boolean = false
  @State
  showSheet: boolean = false
  @State
  showBigImage: boolean = false

  @Builder
  getSheetBuilder() {
    Column() {
      Button("关闭弹窗")
        .onClick(() => {
          this.showSheet = false
        })
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .width("100%")
    .height(200)
  }

  @Builder
  getContentBuilder() {
    Column() {
      Image($r("app.media.ic_public_arrow_left"))
        .width("100%")
        .aspectRatio(1)
        .onClick(() => {
          this.showBigImage = false
        })
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .width("100%")
    .height("100%")
    .backgroundColor(Color.Gray)
  }

  build() {
    Column({ space: 20 }) {
      if (this.showCart) {
        Row()
          .width(200)
          .aspectRatio(1)
          .backgroundColor(Color.Green)
      }

      Image($r("app.media.ic_public_arrow_left"))
        .width(100)
        .aspectRatio(1)
        .onClick(() => {
          this.showBigImage = true
        })
      Button("显示/隐藏")
        .onClick(() => {
          animateTo({ duration: 1000 }, () => {
            this.showCart = !this.showCart
          })
        })
      // Button("弹出模态")
      //   .onClick(() => {
      //     this.showSheet = true
      //   })
    }
    // bindSheet和bindContentCover两个不能同时使用
    // .bindSheet($$this.showSheet, this.getSheetBuilder, {
    //   height: 400
    // })
    .bindContentCover($$this.showBigImage, this.getContentBuilder(), {
      modalTransition: ModalTransition.NONE
    })
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }
}