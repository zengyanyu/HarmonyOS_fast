@Entry
@Component
struct ZhiHuCase {
  build() {
    Column() {
      NarBar();
      ContentItem();
    }
  }
}

@Component
struct NarBar {
  build() {
    Row() {
      Image($r('app.media.left_nav'))
        .fillColor('#848484')
        .backgroundColor('#f5f5f5')
        .borderRadius(12)
        .width(24)
        .aspectRatio(1)
        .margin({
          left: 15
        })

      Text("评论回复")
        .textAlign(TextAlign.Center)
        .layoutWeight(1)
        .fontSize(18)
        .padding({
          right: 39
        })
    }
    .height(40)
    .border({
      color: '#f4f4f4',
      width: {
        bottom: 1
      }
    })
  }
}

@Component
struct ContentItem {
  build() {
    Row() {
      // 左侧头像
      Row() {
        Image($r('app.media.smallxx'))
          .fillColor('#848484')
      }
      .width(20).aspectRatio(1).justifyContent(FlexAlign.Start)

      // 右侧评论区
      Column({ space: 10 }) {
        Text("周杰伦")
          .fontWeight(700)
        Text("意大利嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻")
          .fontSize(16).fontColor('#565656')
          .lineHeight(20)
        // 底部内容
        Row() {
          Text("10-21.IP属地北京").fontSize(12).fontColor('#c3c4c5')
          Row() {
            Image($r('app.media.smallxx'))
              .fillColor('#c3c4c5').width(20).aspectRatio(1)
              .margin({
                right: 5
              })
            Text('100').fontSize(12).fontColor('#c3c4c5')
          }
        }

        // 设置两端对齐
        .justifyContent(FlexAlign.SpaceBetween).width('100%')
      }.layoutWeight(1)
      // 设置子组件的对齐方式
      .alignItems(HorizontalAlign.Start)
      .margin({
        left: 10
      })
    }
    .padding(15)
    // 设置水平方式对齐方式
    .alignItems(VerticalAlign.Top)
  }
}