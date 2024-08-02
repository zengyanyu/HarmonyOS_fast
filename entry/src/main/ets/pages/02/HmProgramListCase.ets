// 黑马程序员列表案例
@Entry
@Component
struct HmProgramListCase {
  build() {
    Column({ space: 20 }) {
      // 第一行数据
      Row() {
        Column() {
          Image('https://i0.hdslb.com/bfs/archive/f45c74578488195bae1a436e443284e795d81cac.png')
            .borderRadius(5)
        }.backgroundColor(Color.Black)
        .width('40%').height(100)

        // 右边布局内容
        Column({ space: 10 }) {
          // 分上中下结构
          Text('2024黑马程序员Java+AI智能辅助变成全套')
          Row({ space: 10 }) {
            Image($r('app.media.up'))
              .width(15)
            Text('黑马程序员').width('100%')
              .fontSize(Color.Gray).borderRadius(5)
          }

          Row({ space: 20 }) {
            Row({space:5}) {
              Image($r('app.media.smallxx'))
                .width(15)
              Text('3.1万')
            }

            Row({space:5}) {
              Image($r('app.media.smallxx'))
                .width(15)
              Text('174')
            }
          }.width('100%')
        }
        .height(100)
        .padding({
          left: 10
        })
        // 剩余的其他内容全部填充
        .layoutWeight(1)
      }.width('100%')
      .height(100)

      Row() {

        Column() {
          Image('https://i0.hdslb.com/bfs/archive/f45c74578488195bae1a436e443284e795d81cac.png')
            .borderRadius(5)
        }.backgroundColor(Color.Black)
        .width('40%').height(100)

        // 右边布局内容
        Column({ space: 10 }) {
          // 分上中下结构
          Text('2024黑马程序员Java+AI智能辅助变成全套')
          Row({ space: 10 }) {
            Image($r('app.media.up'))
              .width(15)
            Text('黑马程序员').width('100%')
              .fontSize(Color.Gray)
          }

          Row({ space: 20 }) {
            Row({ space: 5 }) {
              Image($r('app.media.smallxx'))
                .width(15)
              Text('3.1万')
            }

            Row({ space: 5 }) {
              Image($r('app.media.smallxx'))
                .width(15)
              Text('174')
            }
          }.width('100%')
        }
        .height(100)
        .padding({
          left: 10
        })
        // 剩余的其他内容全部填充
        .layoutWeight(1)
      }.width('100%')
      .height(100)
    }
    .height('100%')
    .margin(10)
  }
}