@Entry
@Component
struct GridLayout {
  build() {
    Grid() {
      GridItem() {
        Column({ space: 10 }) {
          Image($r('app.media.chenrl'))
          Text("陈若琳")
        }
        .height(200)
      }

      GridItem() {
        Column() {
          Image($r('app.media.chenrl'))
          Text("陈若琳")
        }.height(200)
      }

      GridItem() {
        Column() {
          Image($r('app.media.chenrl'))
          Text("陈若琳")
        }.height(200)
      }

      GridItem() {
        Column() {
          Image($r('app.media.chenrl'))
          Text("陈若琳")
        }.height(200)
      }

      GridItem() {
        Column() {
          Image($r('app.media.chenrl'))
          Text("陈若琳")
        }.height(200)
      }
    }
    .columnsTemplate('1fr 1fr')
    .width('100%')
    .height('100%')
    // 横纵坐标留白
    .rowsGap(10)
    .columnsGap(10)
    .padding(10)
  }
}