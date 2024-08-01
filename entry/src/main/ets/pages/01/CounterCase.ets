@Entry
@Component
struct CounterCase {
  @State count: number = 5;
  timer: number = -1

  build() {
    Row() {
      Column() {
        Button(this.count < 5 ? `还剩${this.count}秒` : "发送验证码")
          .onClick(() => {
            // 判断，只能开启一个定时器
            if (this.count === 5) {
              // 计数器
              this.timer = setInterval(() => {
                if (this.count === 0) {
                  clearInterval(this.timer)
                  this.count = 5
                  return;
                }
                this.count--;
              }, 1000)
            }
          })
      }.width('50%')

      Column() {
        Text("正方形")
      }
      .width('50%')
      // 设置宽高比（1）
      .aspectRatio(1)
      .backgroundColor(Color.Red)
    }.height('100%')
  }
}