import { FastPeople, tokenObj } from './local/TokenModel';

@Entry(tokenObj)
@Component
struct LocalStorageCaseB {
  @LocalStorageProp("user") // 单向数据同步
  user: FastPeople = new FastPeople()

  build() {
    Column({ space: 20 }) {
      Text(this.user.name)
      Text(this.user.age.toString())
      Button("修改数据")
        .onClick(() => {
          this.user.age++
        })
      Button("跳转页面")
    }
    .height('100%')
    .width('100%')
  }
}