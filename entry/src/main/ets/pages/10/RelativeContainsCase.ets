// 相对容器
@Entry
@Component
struct RelativeContainsCase {
  build() {
    RelativeContainer() {
      Row() {
        Text('1').fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width(100)
      .aspectRatio(1)
      .backgroundColor('red')
      .id('row1')
      .justifyContent(FlexAlign.Center)

      Row() {
        Text('2').fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width(100)
      .aspectRatio(1)
      .backgroundColor(Color.Pink)
      .id('row2')
      .justifyContent(FlexAlign.Center)
      .alignRules({
        center: {
          anchor: '__container__',
          align: VerticalAlign.Center
        }
      })

      Row() {
        Text('3').fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width(100)
      .aspectRatio(1)
      .backgroundColor(Color.Blue)
      .id('row3')
      .justifyContent(FlexAlign.Center)
      .alignRules({
        bottom: {
          anchor: '__container__',
          align: VerticalAlign.Bottom
        }
      })

      Row() {
        Text('4').fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width(100)
      .aspectRatio(1)
      .backgroundColor(Color.Gray)
      .id('row4')
      .justifyContent(FlexAlign.Center)
      .alignRules({
        center: {
          anchor: '__container__',
          align: VerticalAlign.Center
        },
        middle: {
          anchor: '__container__',
          align: HorizontalAlign.Center
        }
      })

      Row() {
        Text('5').fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width(100)
      .aspectRatio(1)
      .backgroundColor(Color.Green)
      .id('row5')
      .justifyContent(FlexAlign.Center)
      .alignRules({
        top: {
          anchor: '__container__',
          align: VerticalAlign.Top
        },
        middle: {
          anchor: '__container__',
          align: HorizontalAlign.Center
        }
      })

      Row() {
        Text('6').fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width(100)
      .aspectRatio(1)
      .backgroundColor(Color.Brown)
      .id('row6')
      .justifyContent(FlexAlign.Center)
      .alignRules({
        bottom: {
          anchor: '__container__',
          align: VerticalAlign.Bottom
        },
        middle: {
          anchor: '__container__',
          align: HorizontalAlign.Center
        }
      })

      Row() {
        Text('7').fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width(100)
      .aspectRatio(1)
      .backgroundColor(Color.Grey)
      .id('row7')
      .justifyContent(FlexAlign.Center)
      .alignRules({
        end: {
          anchor: '__container__',
          align: HorizontalAlign.End
        },
        top: {
          anchor: '__container__',
          align: VerticalAlign.Top
        }
      })

      Row() {
        Text('8').fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width(100)
      .aspectRatio(1)
      .backgroundColor(Color.Pink)
      .id('row8')
      .justifyContent(FlexAlign.Center)
      .alignRules({
        end: {
          anchor: '__container__',
          align: HorizontalAlign.End
        },
        center: {
          anchor: '__container__',
          align: VerticalAlign.Center
        }
      })

      Row() {
        Text('9').fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width(100)
      .aspectRatio(1)
      .backgroundColor(Color.Gray)
      .id('row9')
      .justifyContent(FlexAlign.Center)
      .alignRules({
        end: {
          anchor: '__container__',
          align: HorizontalAlign.End
        },
        bottom: {
          anchor: '__container__',
          align: VerticalAlign.Bottom
        }
      })
    }
    .height('100%')
    .width('100%')
  }
}