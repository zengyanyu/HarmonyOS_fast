@Component
export struct FriendPage {
  build() {
    NavDestination() {
      Row({ space: 10 }) {
        Column() {
          Image('https://img2.baidu.com/it/u=3537140667,483896168&fm=253&fmt=auto&app=120&f=JPEG?w=505&h=500')
            .width(80)
            .aspectRatio(1)
            .borderRadius(10)
        }
        .justifyContent(FlexAlign.Start)
        .height('100%')

        Column({ space: 10 }) {
          Text('崛誓悻詈').fontWeight(FontWeight.Bold)
            .fontSize(26)
          Text('柔柔的烛光里，我将你的容颜印入我的脑海；淡淡的玫瑰香里，我将对你的爱表白；轻轻的歌声里，我许下我爱的诺言；亲爱的，情人节快乐，我的爱永不变！')
            .textOverflow({
              overflow: TextOverflow.Clip
            })
          Row({ space: 10 }) {
            Image('https://img1.baidu.com/it/u=3285655239,3777030402&fm=253&fmt=auto&app=120&f=JPEG?w=507&h=500')
              .width(120)
              .aspectRatio(1)
            Image('https://img0.baidu.com/it/u=4218602670,1294229692&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500')
              .width(120)
              .aspectRatio(1)
          }
        }.layoutWeight(1)
        .height('100%')
        .justifyContent(FlexAlign.Start)
        .alignItems(HorizontalAlign.Start)
      }
      .margin(10)
    } /*.title("朋友圈")*/
  }
}