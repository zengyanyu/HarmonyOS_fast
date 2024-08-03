// 交友
@Entry
@Component
struct MarkFriendsCase {
  build() {
    Column() {
      Flex({
        direction: FlexDirection.Row,
        // 换行
        // wrap:FlexWrap.Wrap
        // 主轴对齐方式
        //justifyContent: FlexAlign.SpaceBetween
      }) {
        Row() {
          Stack() {
            Image($r('app.media.area')).width(15).zIndex(2)// 偏移
              .translate({
                x: -35,
                y: 0
              })
            TextInput({
              text: "西安市"
            }).width('70%')
          }
        }.width('33%').height(60)
        .justifyContent(FlexAlign.Start)

        Row({ space: 20 }) {
          // Text("发现").margin({
          //   right: 15
          // })
          // Text("附近")
          // Tabs() {
          //   TabContent().tabBar('发现')
          //   TabContent().tabBar('附近')
          // }
          Text("发现").fontSize(20)
            .fontWeight(700)
            .border({
              color: '#8468d7',
              width: {
                bottom: 4
              }
            }).padding({
            bottom: 3
          })
          Text("附近").fontSize(20)
            .padding({
              bottom: 3
            })
        }.width('33%').height(60)
        .justifyContent(FlexAlign.Center)

        Row() {
          // 更多
          Image($r('app.media.some')).width(15)
        }.width('33%').height(60)
        .justifyContent(FlexAlign.End)
      }.margin({
        bottom: 30
      })
      .width('100%')


      Column() {
        // 中间主体图片
        Image('https://cdn7.axureshop.com/demo2024/2309596/images/%E7%A4%BE%E5%8C%BA/u1215.svg')
          .width('100%')
          .height(400).borderRadius(10)

        Row() {
          Column({ space: 10 }) {
            Text("西瓜")
              .fontSize(20)
              .fontColor(Color.White)
              .fontWeight(700) // 加粗
            Text("3.4km.互联网.巨蟹座").fontColor(Color.White)

            Text() {
              ImageSpan($r("sys.media.ohos_ic_public_play"))
                .width(20)
              ImageSpan($r("sys.media.ohos_ic_public_sound"))
                .width(20)
                .margin({
                  left: 10
                })
              Span("6'")
                .fontColor(Color.White)
                .margin({
                  left: 10
                })
            }
          }.alignItems(HorizontalAlign.Start)

          // 右下角图标
          Image($r('app.media.ai')).width(30).zIndex(2).translate({
            x: 130,
            y: 40
          })


        }
        .margin({
          top: -120,
          bottom: 40,
          left: -150
        })
      }

      Column({ space: 10 }) {
        // 底部内容
        Grid() {
          GridItem() {
            Row() {
              Column({ space: 4 }) {
                Text('灵魂匹配')
                Text('和懂你的人聊天')
              }
              // 设置纵轴的对齐方式
              .alignItems(HorizontalAlign.Start)

              Column() {
                Image($r('app.media.ai')).width(30)
              }
            }
          }.backgroundColor(Color.Blue)
          .height(80)
          .borderRadius(8)

          GridItem() {
            Row() {
              Column({ space: 4 }) {
                Text('灵魂匹配')
                Text('和懂你的人聊天')
              }
              .alignItems(HorizontalAlign.Start)

              Column() {
                Image($r('app.media.ai')).width(30)
              }
            }

          }.backgroundColor(Color.Pink)


          .height(80)
          .borderRadius(8)
        }
        .width('100%')
        .columnsTemplate('1fr 1fr')
        // 行空格
        // .rowsGap(10)
        .columnsGap(10)
      }
      .margin({
        top: 20
      })

    }
    .padding(10)
  }
}