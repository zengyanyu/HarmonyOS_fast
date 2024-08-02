import { text } from '@kit.ArkGraphics2D';

@Entry
@Component
struct DoubleBind {
  build() {
    Grid() {
      TextInputCase();
      CheckBoxCase();
      TabsCase();
    }
    .margin(10)
    .columnsTemplate('1fr 1fr')
    // 设置行空白和列空白
    .rowsGap(10)
    .columnsGap(10)
  }
}

// 双向绑定
@Component
struct TextInputCase {
  @State inputValue: string = '老高'

  build() {
    GridItem() {
      Column({ space: 10 }) {
        TextInput({
          text: $$this.inputValue
        })
        Text(this.inputValue)
      }
      .justifyContent(FlexAlign.Center)
      .height(200)
      .backgroundColor(Color.Pink)
    }
  }
}

@Component
struct CheckBoxCase {
  @State isMarry: boolean = false;

  build() {
    GridItem() {
      Column({ space: 10 }) {
        Checkbox().select($$this.isMarry)
        if (this.isMarry) {
          Text("已婚")
        } else {
          Text("单身狗")
        }
      }
      .justifyContent(FlexAlign.Center)
      .height(200)
      .width('100%')
      .backgroundColor(Color.Pink)
    }
  }
}

// 双向绑定
@Component
struct TabsCase {
  @State currentIndex: number = 2;

  build() {
    Tabs({
      // 默认值
      // barPosition:BarPosition.Start
      // 位置设置为下方
      barPosition: BarPosition.End,
      // 实现双向绑定
      index: $$this.currentIndex
    }) {
      TabContent() {
        Text('首页' + this.currentIndex).fontSize(30)
      }.tabBar("首页")

      TabContent() {
        Text('健康' + this.currentIndex).fontSize(30)
      }.tabBar("健康")

      TabContent() {
        Text('我的' + this.currentIndex).fontSize(30)
      }.tabBar("我的")

    }.height(200)
    .backgroundColor(Color.Pink)
  }
}