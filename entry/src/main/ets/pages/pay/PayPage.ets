import { emitter } from '@kit.BasicServicesKit';
import { common } from '@kit.AbilityKit';

@Entry
@Component
struct PayPage {
  @StorageProp("price")
  price: number = 0

  build() {
    Column({ space: 10 }) {
      Text("待支付价格：")
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

      // Button("通知A窗口改值")
      //   .onClick(() => {
      //     emitter.emit("changeValue", {
      //       data: {
      //         value: 12345
      //       }
      //     })
      //   })
      //
      // Button("微信支付")
      //   .onClick(() => {
      //     const context = getContext() as common.UIAbilityContext
      //     context.terminateSelfWithResult({
      //       resultCode: 0,
      //       want: {
      //         abilityName: 'EntryAbility', // 拉起哪个ability
      //         bundleName: 'com.example.myharmonycode', // 哪个包
      //         parameters: {
      //           paySuccess: true // 支付成功的标记
      //         }
      //       }
      //     })
      //   })
    }
    .height('100%')
    .width('100%')
  }
}