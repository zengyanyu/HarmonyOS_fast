@Entry
@Component
struct LinkCase {
  @State
  num: number = 0
  @State
  obj: TestLinkItem = { num: 1 }

  build() {
    Column({ space: 20 }) {
      Text(this.obj.num.toString())
        .fontSize(40)
      ChildLinkCase({ obj: this.obj })
      Button('+')
        .onClick(() => {
          this.obj.num++;
        })
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct ChildLinkCase {
  @Link
  obj: TestLinkItem

  build() {
    Column() {
      Text(this.obj.num.toString())
        .fontSize(50)
        .fontColor(Color.Red)
      Button("-")
        .onClick(() => {
          this.obj.num--
        })
    }
  }
}

interface TestLinkItem {
  num: number
}