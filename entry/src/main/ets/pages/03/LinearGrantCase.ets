// 渐变色案例
@Entry
@Component
struct LingGrantCase {
  build() {
    Column() {
      Text('Hello World')
        .id('LingGrantCaseHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
    }
    // 渐变色
    .linearGradient({
      direction: GradientDirection.Top,
      colors: [[Color.Blue, 0], [Color.Red, 1]]
    })
    .height('100%')
    .width('100%')
  }
}