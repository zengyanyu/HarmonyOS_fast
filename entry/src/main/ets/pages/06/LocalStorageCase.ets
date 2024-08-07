import { FastPeople, tokenObj } from './local/TokenModel'

@Entry(tokenObj)
@Component
struct LocalStorageCase {
  // 单项数据同步
  @LocalStorageProp('user')
  user: FastPeople = new FastPeople()

  build() {
    Column({ space: 20 }) {
      Text(this.user.name)
      Text(this.user.age.toString())
      Button('修改数据-Prop')
        .onClick(() => {
          this.user.age++;
        })
    }
    .height('100%')
    .width('100%')
  }
}