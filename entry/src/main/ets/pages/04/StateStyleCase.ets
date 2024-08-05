@Entry
@Component
struct StateStyleCase {
  @State message: string = 'Hello World';
  @State
  isEnable: boolean = true // 当前是否可用

  build() {
    Column({ space: 20 }) {
      Row() {
        Text("你TM是干什么吃的？")
      }
      .width("100%")
      .height(60)
      .border({
        color: "#ccc",
        width: 1
      })
      .padding(10)
      .stateStyles({
        normal: {
          .backgroundColor(Color.White)
        },
        pressed: {
          .backgroundColor("#ccc")
        },
        disabled: {
          .backgroundColor(Color.Blue)
        }
      })
      .enabled(this.isEnable) // 多态样式


      Row() {
        TextInput()
          .layoutWeight(1)
          .focusable(true)// 自动聚焦
          .stateStyles({
            normal: {
              .border({
                color: Color.Red,
                width: 0
              })
            },
            focused: {
              .border({
                color: Color.Red,
                width: 1
              })
            }
          })
      }
      .width("100%")

      Button("测试禁用")
        .onClick(() => {
          this.isEnable = !this.isEnable
        })
    }
    .height('100%')
    .width('100%')
    .padding(20)
  }
}