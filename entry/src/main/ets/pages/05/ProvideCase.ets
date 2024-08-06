@Entry
@Component
struct ProvideCase {
  build() {
    Column() {
      Text("父组件")// Text(this.num.toString())
        //   .fontSize(50)
        .fontColor(Color.Red)
      ChildProvideCase()
      // Button("+")
      //   .onClick(() => {
      //     // this.num++
      //   })
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct ChildProvideCase {
  @Provide("laogao")
  num: number = 1

  build() {
    Column() {
      Text("儿子组件" + this.num)
      GrandChildCase()
    }
    .width('100%')
  }
}

@Component
struct GrandChildCase {
  @Consume("laogao")
  cc: number

  build() {
    Column() {
      Text("孙子组件")
      Text(this.cc.toString())
        .fontSize(40)
        .onClick(() => {
          this.cc--
        })
    }
    .width('100%')
  }
}