// 全局样式，没啥用 不能导出，导出也没办法使用  全局样式@Styles还不能定义箭头函数
@Styles
function textStyles() {
  // 只能设置一些通用属性，直接通过.的形式直接调用，不是通用的属性，不能定义为复用
  .width(120)
  .height(60)
  .borderRadius(30)
  .backgroundColor(Color.Pink)
}

@Entry
@Component
struct StylesCase {
  // 局部Styles的权重比全局Styles的大
  // 局部Styles
  @Styles
  textStyles() {
    .width(120)
    .height(60)
    .borderRadius(30)
    .backgroundColor(Color.Gray)
  }

  build() {
    Row() {
      Column({ space: 20 }) {
        Text("测试")
          .textStyles()
          .fontSize(20)
          .textAlign(TextAlign.Center)

        Text("测试1")
          .textStyles()
          .fontSize(20)
          .textAlign(TextAlign.Center)

      }
      .width('100%')
    }
  }
}