import { UserInfo, UserInfoModel } from './AppStorageCaseLogin'

PersistentStorage

@Entry
@Component
struct AppStorageCaseMain {
  @StorageProp("userInfo")
  user: UserInfoModel = new UserInfoModel({} as UserInfo)

  build() {
    Column({ space: 20 }) {
      Text(JSON.stringify(this.user))

      Row() {
        Image(this.user.avatar).width(80)
          .aspectRatio(1)
          .borderRadius(40)

        Column() {
          Text(this.user.username).fontSize(20)
          Text(this.user.age + "").fontSize(20)
        }.layoutWeight(1)
      }
    }
    .height('100%')
    .width('100%')
    .padding(20)
    .backgroundColor(Color.Gray)
  }
}