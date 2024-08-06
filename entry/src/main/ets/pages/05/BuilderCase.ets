import { getSelectItem } from './builders'

@Entry
@Component
struct BuilderCase {
  @State
  selectList: Array<string> = ["A", "B", "C", "D", "E", "F"]

  @Builder
  getSelectItem(item: string) {
    Row() {
      Text() {
        Span(item)
        Span(".选项")
      }
      .fontSize(20)
    }
    .width("100%")
    .height(60)
    .borderRadius(10)
    .backgroundColor("#dcd9da")
    .padding({
      left: 20,
      right: 20
    })
  }

  build() {
    List({ space: 10 }) {
      ForEach(this.selectList, (item: string, index: number) => {
        ListItem() {
          getSelectItem(item)
        }
      })
    }
    .width("100%")
    .padding(20)
  }
}

// string number boolean

// builder支持导入导出 -> API12