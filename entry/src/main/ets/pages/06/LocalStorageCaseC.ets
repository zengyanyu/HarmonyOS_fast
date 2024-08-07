import { FastPeople } from './local/TokenModel'

@Entry(LocalStorage.getShared())
@Component
struct LocalStorageCaseC {
  @LocalStorageProp("user")
  user: FastPeople = new FastPeople()

  build() {
    RelativeContainer() {
      Text(this.user.name)
        .id('LocalStorageCaseCHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}