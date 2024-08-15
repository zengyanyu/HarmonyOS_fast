@Entry
@Component
struct RelativeCase {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Row() {
        Text('任务编号:4032912593983936603')
      }.id('text1')
      .width('100%')

      Text('待提货')
        .alignRules({
          end: {
            anchor: 'text1',
            align: HorizontalAlign.End
          }
        , center: {
            anchor: 'text1',
            align: VerticalAlign.Center
          }
        })

      Row({ space: 10 }) {
        Text('起')
          .fontSize(14)
          .fontColor(Color.White)
          .borderRadius(7)
          .backgroundColor(Color.Black)
          .id('start')

        Text('北京市朝阳区')
          .alignRules({
            start: {
              anchor: 'start',
              align: HorizontalAlign.End
            },
          })
      }.width('100%').id('text2')
      .alignRules({
        top: {
          anchor: 'text1',
          align: VerticalAlign.Bottom
        }
      })
      .padding({
        top: 20
      })

      Row({ space: 10 }) {
        Text('止')
          .fontSize(14)
          .fontColor(Color.White)
          .borderRadius(7)
          .backgroundColor(Color.Red)
          .id('end')

        Text('北京市朝阳区')
          .alignRules({
            start: {
              anchor: 'end',
              align: HorizontalAlign.End
            },
          })
      }.width('100%')
      .alignRules({
        top: {
          anchor: 'text2',
          align: VerticalAlign.Bottom
        }
      })
      .padding({
        top: 20
      })

    }
    .padding(20)
    .height('100%')
    .width('100%')
  }
}