import { ReplyItem, ReplyItemModel } from '../models'
import { promptAction } from '@kit.ArkUI'

@Preview
@Component
export struct HmCommentItem {
  @Prop
  item: ReplyItemModel = new ReplyItemModel({} as ReplyItem) // 初始化这个数据
  changeLike: () => void = () => {

  }

  build() {
    Row({ space: 20 }) {
      // Image($r('sys.media.ohos_ic_public_arrow_left'))
      Image(this.item.avatar)
        .width(40)
        .aspectRatio(1)
        .backgroundColor('#ccc')
        .syncLoad(true)// 同步加载
        .borderRadius(20)

      Column({ space: 10 }) {
        // Text('奥运会标题')
        Text(this.item.author)
          .fontWeight(FontWeight.Bold)

        // Text("内容内容内容内容内容内容内容内容内容内容内容")
        Text(this.item.content)
          .lineHeight(22)

        Row() {

          Text(`${this.item.time}.IP 属地${this.item.area}`)
            .fontSize(14)
            .fontColor('#d2d2d2')

          Row({ space: 6 }) {
            Image($r("app.media.ai"))
              .fillColor(this.item.likeFlag ? Color.Red : '#d2d2d2')
              .width(14)
              .aspectRatio(1)
              .onClick(() => {
                // promptAction.showToast({ message: '点击事件' })
                this.changeLike();
              })
            // Text('text')
            Text(this.item.likeNum.toString())// Text("100")
              .fontColor("#d2d2d2")
              .fontSize(14)
          }
        }
        .width('100%')
        // 空间平分
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .padding({
      left: 20,
      right: 20
    })
    // 副轴对齐方式调整
    .alignItems(VerticalAlign.Top)
  }
}