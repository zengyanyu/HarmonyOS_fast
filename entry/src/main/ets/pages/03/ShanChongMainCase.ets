// 闪充-主页面
import { promptAction, router } from '@kit.ArkUI'

@Entry
@Component
struct ShanChongMainCase {
  @State list: number[] = Array.from(Array(10), (_: number, index: number) =>
  index + 1
  )

  build() {
    Scroll() {
      Column() {

        Row({ space: 10 }) {
          Text("充电站列表").fontSize(30)
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .width('100%')

          Button('返回').margin({
            left: -100
          })
            .onClick(() => {
              // 返回
              router.back();
            })
        }

        List() {
          ForEach(this.list, (item: number, index: number) => {
            ListItem() {
              // Text(item.toString())
              Row() {
                Image($r('app.media.girl'))
                  .width(80)
                  .height(80)

                Column({ space: 10 }) {
                  Row() {
                    Text("白云科技充电站凤凰")
                      .fontSize(12).layoutWeight(1)
                    Image($r('sys.media.ohos_ic_public_location')).width(10)

                    Text("¥1.50").width(50)
                  }
                  .width('100%')
                  .justifyContent(FlexAlign.SpaceBetween)

                  Row({ space: 10 }) {
                    Text("朝阳区家园1号朝阳区家")
                      .fontSize(12).layoutWeight(1)

                    Text("删除")
                      .textAlign(TextAlign.Center)
                      .borderRadius(10)
                      .fontColor(Color.White)
                      .fontSize(12)
                      .fontWeight(FontWeight.Bold)
                      .backgroundColor('blue')
                      .width(50)
                      .onClick(() => {
                        promptAction.showToast({ message: '删除成功' })
                      })

                    Text("空闲6")
                      .textAlign(TextAlign.Center)
                      .borderRadius(10)
                      .fontColor(Color.White)
                      .fontSize(12)
                      .fontWeight(FontWeight.Bold)
                      .backgroundColor('green')
                      .width(50)
                  }.justifyContent(FlexAlign.SpaceBetween)
                  .width('100%')
                }.padding(10).layoutWeight(1)
              }
              .margin(10)
            }
          })
        }

      }
      .height('100%')
      .width('100%')
      // .backgroundColor(Color.Pink)
      .padding(10)
    }
  }
}