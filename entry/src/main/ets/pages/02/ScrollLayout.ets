@Entry
@Component
struct ScrollLayout {
  build() {
    Column() {
      ScrollTop();
      ScrollMain();
      ScrollBottom();
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Gray)
  }
}

@Component
struct ScrollTop {
  build() {
    Column() {
      Text('顶部结构')
        .width('100%')
        .height(60).backgroundColor(Color.Pink)
        .textAlign(TextAlign.Center)
    }
  }
}

@Component
struct ScrollMain {
  scroll: Scroller = new Scroller();

  build() {
    // Scroll中只能放一个子组件
    Scroll(this.scroll) {
      Column({ space: 20 }) {
        Button('到底部')
          .onClick(() => {
            this.scroll.scrollEdge(Edge.End)
          })
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Text("2222222222222222222").height(60)
          .backgroundColor(Color.Yellow)
          .fontSize(Color.White)
          .width('100%').textAlign(TextAlign.Center)
        Button('到顶部')
          .onClick(() => {
            this.scroll.scrollEdge(Edge.Top)
          })
      }
    }.width('100%')
    .layoutWeight(1)
  }
}

@Component
struct ScrollBottom {
  build() {
    Text('底部结构')
      .width('100%')
      .height(60).backgroundColor(Color.Blue)
      .textAlign(TextAlign.Center)
  }
}