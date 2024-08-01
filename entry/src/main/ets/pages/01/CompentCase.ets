@Entry
@Component
struct CompentCase {
  @State message: string = 'Hello World';

  build() {
    Scroll(){
      Row(){
        Column(){
          Text("老高，你讲的真好")
          Text(){
            Span("¥").fontSize(12)
            Span('50.45').fontSize(20)
          }

          Row({space:15}){
            Column()
              .width(100)
              .height(200)
              .backgroundColor(Color.Pink)
            Column()
              .width(100)
              .height(200)
              .backgroundColor(Color.Red)
            Column().width(100)
              .height(200)
              .backgroundColor(Color.Blue)
          }.width('100%')
          .justifyContent(FlexAlign.Center);

          Column({space:20}){
            Column()
              .width(200)
              .height(100)
              .backgroundColor(Color.Pink)
            Column()
              .width(200)
              .height(100)
              .backgroundColor(Color.Red)
            Column()
              .width(200)
              .height(100)
              .backgroundColor(Color.Blue)
          }
          .height('100%')
          .margin({
            top:20
          })

          Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.SpaceAround}){
            Column()
              .width(100)
              .height(200)
              .backgroundColor(Color.Pink)
            Column()
              .width(100)
              .height(200)
              .backgroundColor(Color.Red)
            Column().width(100)
              .height(200)
              .backgroundColor(Color.Blue)
          }

        }
      }
    }
  }

}