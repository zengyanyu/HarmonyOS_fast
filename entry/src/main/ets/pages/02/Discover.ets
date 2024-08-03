@Entry
@Component
struct Discover {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {
        Row({ space: 4 }) {
          Image($r("sys.media.ohos_ic_public_location"))
            .width(14)
          Text("西安市")
            .fontSize(14)
        }

        Row({ space: 20 }) {
          Text("发现")
            .fontSize(20)
            .fontWeight(600)
            .border({
              color: "#8468d7",
              width: {
                bottom: 4
              }
            })
            .padding({
              bottom: 3
            })
          Text("附近")
            .fontSize(20)
            .padding({
              bottom: 3
            })
        }
        .layoutWeight(1)
        .justifyContent(FlexAlign.Center)


        Image($r("sys.media.ohos_ic_public_drawer_open_filled"))
          .width(20)

      }
      .height(50)
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)

      Column() {
        Image("http://gips3.baidu.com/it/u=100751361,1567855012&fm=3028&app=3028&f=JPEG&fmt=auto?w=960&h=1280")
          .width("100%")
          .height(400)
          .borderRadius(12)

        Row() {
          Column({ space: 10 }) {
            Text("西瓜")
              .fontSize(20)
              .fontColor(Color.White)

            Text("3.4km.互联网.巨蟹座")
              .fontColor(Color.White)

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

          }
          .alignItems(HorizontalAlign.Start)

          Row() {
            Image($r("sys.media.ohos_ic_public_device_watch"))
              .width(30)
              .fillColor(Color.Red)

          }
          .width(50)
          .aspectRatio(1)
          .borderRadius(25)
          .backgroundColor(Color.White)
          .justifyContent(FlexAlign.Center)
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width("100%")
        .margin({
          top: -100
        })
        .padding({
          left: 16,
          right: 16
        })
      }
      .margin({
        top: 20
      })

    }
    .width("100%")
    .height("100%")
    .padding(20)
  }
}