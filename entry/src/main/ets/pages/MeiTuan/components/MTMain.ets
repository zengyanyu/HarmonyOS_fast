import { getAllDataByHttp } from '../api';
import { Category, FoodItem } from '../viewmodels';
import MTFoodItem from './MTFoodItem'

@Component
struct MTMain {
  @State
  list: Category[] = []
  @State
  activeIndex: number = 0
  scroller: Scroller = new Scroller()

  // 初始化对象
  // 获取数据
  aboutToAppear(): void {
    // 获取所有数据
    this.getAllData();
  }

  // 获取所有数据
  async getAllData() {
    this.list = await getAllDataByHttp();
    // 测试接口是否调用成功
    // promptAction.showToast({ message: JSON.stringify(this.list) })
  }

  @Builder
  getHeaderBuilder(item: Category) {
    Row() {
      Text(item.name)
        .fontWeight(FontWeight.Bold)
        .fontSize(16)
    }
    .width("100%")
    .padding({
      left: 10
    })
  }

  build() {
    Row() {
      Column() {
        ForEach(this.list, (item: Category, index: number) => {
          Text(item.name)
            .height(50)
            .width('100%')
            .textAlign(TextAlign.Center)
            .fontSize(14)
            .backgroundColor(this.activeIndex === index ? $r("app.color.white") : $r("app.color.left_back_color"))
            .onClick(() => {
              this.activeIndex = index
              this.scroller.scrollToIndex(index)
            })
        })
      }
      .height("100%")
      .width(90)

      //   右侧内容
      List({ scroller: this.scroller }) {
        ForEach(this.list, (item: Category, index: number) => {
          // ListItem() {
          //   MTFoodItem()
          // }
          ListItemGroup({
            header: this.getHeaderBuilder(item)
          }) {
            ForEach(item.foods, (obj: FoodItem) => {
              ListItem() {
                MTFoodItem({ item: obj });
              }
            })
          }
          .padding({
            bottom: index === (this.list.length - 1) ? 300 : 0
          })
        })
      }.layoutWeight(1)
      .backgroundColor('#fff')
      .padding({
        bottom: 80
      })
    }
    .layoutWeight(1)
    .alignItems(VerticalAlign.Top)
    .width('100%')
  }
}

export default MTMain