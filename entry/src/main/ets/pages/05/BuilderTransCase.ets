@Entry
@Component
struct BuilderTransCase {
  @State
  salary: number = 7
  @State
  currentName: string = "张三"

  @Builder
  getCardItem(leftTitle: string, rightValue: string) {
    Row() {
      Text(leftTitle)
      Text(rightValue)
    }
    .width('100%')
    .height(60)
    .padding({
      left: 10,
      right: 10
    })
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
    .borderRadius(10)
  }

  @Builder
  getCardObj(item: CardItem) {
    Row() {
      Text(item.leftTitle)
      Text(item.rightValue + "万")
    }
    .height(60)
    .padding({
      left: 10,
      right: 10
    })
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
    .width("100%")
    .borderRadius(10)
  }

  @Builder
  getMyName() {
    Text(this.currentName)
      .fontSize(40)
  }

  build() {
    Column({ space: 20 }) {
      this.getCardItem('姓名', '曾衍育');
      this.getCardItem('年龄', '30');
      this.getCardItem('性别', '男');

      this.getCardObj({
        leftTitle: '年薪',
        rightValue: this.salary
      })
      this.getMyName();

      Button("加薪")
        .onClick(() => {
          this.salary++
        })
      Button("修改名称")
        .onClick(() => {
          this.currentName = "曾衍育1"
        })

    }
    .height('100%')
    .width('100%')
    .padding(10)
    .backgroundColor(Color.Gray)
  }
}

interface CardItem {
  leftTitle: string,
  rightValue: number
}