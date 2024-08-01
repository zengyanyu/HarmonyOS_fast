@Entry
@Component
struct DouYinCase {

  build() {
    Stack(){
      Text("抖音")
        .fontSize(60)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Blue)
        .zIndex(2)

      Text("抖音")
        .fontSize(60)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Pink)
        // 偏移
        .translate({
          x:-2,
          y:-2
        })

      Text("抖音")
        .fontSize(60)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Red)
          // 偏移
        .translate({
          x:2,
          y:2
        })
    }.width('100%')
    .height(300)
  }
}