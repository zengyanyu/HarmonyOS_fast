import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct PropCase {
  @State
  num: number = 0
  @State
  obj: TestItem = { num: 1 }

  build() {
    Column({ space: 20 }) {
      Text(this.obj.num.toString())
        .fontSize(40)
      ChildCase({ obj: this.obj })
      Button("+")
        .onClick(() => {
          this.obj.num++
        })

    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct ChildCase {
  // @State
  @Prop
  num: number = 10
  @Prop
  @Watch("test")
  obj: TestItem = { num: 10 }

  test() {
    promptAction.showToast({ message: '消息已触发' })
  }

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

interface TestItem {
  num: number
}