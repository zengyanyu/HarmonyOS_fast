@Entry
@Component
struct Demo {
  @State message: string = 'Hello World';

  build() {
    // Column() {
    //   Row(){
    //
    //   }.width(200).aspectRatio(1)
    //   .backgroundColor(Color.Pink)
    // }
    // .justifyContent(FlexAlign.Center)
    // // .height('100%')
    // // .width('100%')
    // .alignItems(HorizontalAlign.Center)
    Flex({
      justifyContent: FlexAlign.Center,
      alignItems: ItemAlign.Center
    }) {
      Row() {

      }.width(200).aspectRatio(1)
      .backgroundColor(Color.Pink)
    }
    .height('100%')
    // .width('100%')
  }
}