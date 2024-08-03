// 堆叠案例
import { router } from '@kit.ArkUI'

@Entry
@Component
struct StackCase {
  build() {
    Column({ space: 20 }) {
      Stack() {
        Column()
          .width(300)
          .aspectRatio(1)
          .backgroundColor(Color.Pink)

        Column()
          .width(200)
          .aspectRatio(1)
          .backgroundColor(Color.Blue)

        Column()
          .width(100)
          .aspectRatio(1)
          .backgroundColor(Color.Red)
      }

      Button("返回")
        .onClick(() => {
          // 返回
          router.back();
        })
    }
    // 主轴
    .justifyContent(FlexAlign.Center)
    // 副轴
    // .alignItems(HorizontalAlign.Center)

    .height('100%')
    .width('100%')
  }
}