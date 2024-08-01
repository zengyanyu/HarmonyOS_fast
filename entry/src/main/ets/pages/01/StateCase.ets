@Entry
@Component
struct StateCase {

  // @State
  // user: UserInfo = {
  //   username: '老高',
  //   age: 34,
  //   address: {
  //     provice: "北京",
  //     city: '北京',
  //     area: '昌平'
  //   }
  // }

  build() {
    Row() {
      Column({ space: 20 }) {
        Row() {
          Text("姓名：")
          TextInput()
            .layoutWeight(1)
        }
        .width('100%')
        .padding({
          left: 20,
          right: 20
        })

        Row() {
          Text("年龄：")
          TextInput()
            .layoutWeight(1)
        }
        .width('100%')
        .padding({
          left: 20,
          right: 20
        })

        Row() {
          Text("地址：")
          TextInput()
            .layoutWeight(1)
          TextInput()
            .layoutWeight(1)
          TextInput()
            .layoutWeight(1)
        }
        .width('100%')
        .padding({
          left: 20,
          right: 20
        })
      }
    }
  }
}


// class UserInfo {
//   username: string
//   age: number
//   address: {
//     provice: string
//     city: string
//     area: string
//   }
// }

