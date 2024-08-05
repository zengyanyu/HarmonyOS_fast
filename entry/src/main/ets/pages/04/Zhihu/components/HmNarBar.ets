import { text } from '@kit.ArkGraphics2D'
import { router } from '@kit.ArkUI'

@Preview
@Component
export struct HmVarBar {
  title: string = ""

  build() {
    Row() {
      Row() {
        // 返回
        Image($r('sys.media.ohos_ic_public_arrow_left'))
          .width(16)
          .aspectRatio(1)
          .onClick(() => {
            // 返回
            router.back();
          })
      }.width(16)
      .justifyContent(FlexAlign.Center)
      .backgroundColor('#ccc')
      .borderRadius(15)

      Text(this.title)
        .fontWeight(FontWeight.Bold)
        .layoutWeight(1)
        .fontSize(20)
        .textAlign(TextAlign.Center)

    }.width('100%')
    .height(50)
    .padding({
      left: 15,
      right: 15
    })

  }
}