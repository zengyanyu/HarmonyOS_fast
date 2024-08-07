@Entry
@Component
struct ObservedCase {
  @State
  list: DouyinCommentModelModel[] = [new DouyinCommentModelModel({
    author: '曾衍育',
    like_count: 10,
    content: '222'
  }), new DouyinCommentModelModel({
    content: '你爱我吗',
    author: '小泡菜',
    like_count: 10
  }), new DouyinCommentModelModel({
    content: '要不是我干过我就真信了',
    author: '神经',
    like_count: 9
  })]

  build() {
    Column() {
      List() {
        ForEach(this.list, (item: DouyinCommentModelModel) => {
          ListItem() {
            // 封装一个组件
            DouyinCommentItem({ item: item }) // ObjectLink中的es6的语法不支持
          }
        })
      }
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct DouyinCommentItem {
  // ObjectLink修饰的,不能有初始值
  @ObjectLink
  item: DouyinCommentModelModel

  build() {
    Column({ space: 10 }) {
      Row({ space: 10 }) {
        Text(this.item.author)
          .fontColor(Color.Red)
        Column({ space: 20 }) {
          Text(this.item.content)
            .fontColor(Color.White)
            .backgroundColor(Color.Gray)
            .fontWeight(FontWeight.Bold)

          Text(this.item.like_count.toString())
            .backgroundColor(Color.Gray)
        }.layoutWeight(1)
        .justifyContent(FlexAlign.Start)
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .width('100%')
    .height(100)
    .padding(20)
  }
}

// 数组 -> 对象 -> 子组件
interface DouyinCommentModel {
  content: string // 评论内容
  like_count: number // 数量
  author: string // 作者名称
}

@Observed
export class DouyinCommentModelModel implements DouyinCommentModel {
  content: string = ''
  like_count: number = 0
  author: string = ''

  constructor(model: DouyinCommentModel) {
    this.content = model.content
    this.like_count = model.like_count
    this.author = model.author
  }
}
