@Entry
@Component
struct ExtendCase {
  build() {
    Row() {
      Column() {
        Text("测试")
          .textStyle();

      }.width('100%')
    }.height('100%')
  }
}

// @Extend 只能在全局中使用； 不能导出，只能在当前文件使用
@Extend(Text) function textStyle(){
  .width(120)
  .height(60)
  .borderRadius(30)
  .backgroundColor(Color.Pink)
  .fontSize(20)
  .textAlign(TextAlign.Center)
}