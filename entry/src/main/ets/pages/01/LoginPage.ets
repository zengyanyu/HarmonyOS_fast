
const TAG: string ='[LoginPage]';

@Entry
@Component
struct LoginPage {
  @State username: string ='';
  @State password: string ='';

  build() {
    Column() {
      Text('ddd')
        .fontSize(30)
        .margin({ top: 30, bottom: 30 })
      TextInput({ placeholder:'username'})
        .height(50)
        .width('80%')
        .fontSize(16)
        .margin({ bottom: 10 })
        .onChange((value: string) => {
          this.username = value;
        })
      TextInput({ placeholder:'password'})
        .height(50)
        .width('80%')
        .fontSize(16)
        .margin({ bottom: 10 })
        .type(InputType.Password)
        .onChange((value: string) => {
          this.password = value;
        })
      Button('xxxxx')
        .onClick(() => {
        })
        .height(50)
        .width('80%')
        .fontSize(16)
        .margin({ bottom: 10 })
      Button('xxx')
        .height(50)
        .width('80%')
        .fontSize(16)
        .margin({ bottom: 10 })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
