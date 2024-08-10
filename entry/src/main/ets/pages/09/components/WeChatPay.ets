import { common } from '@kit.AbilityKit'
import { emitter } from '@kit.BasicServicesKit'
import { promptAction } from '@kit.ArkUI'

@Component
struct WeChatPay {
  // emitter  是否可以线程通信
  aboutToAppear(): void {
    emitter.on("changeValue", (res) => {
      AlertDialog.show({ message: res.data?.value + "" })
    })
  }

  build() {
    NavDestination() {
      Column() {
        Button("微信支付")
          .onClick(async () => {
            // 拉起微信支付的Ability
            const context = getContext() as common.UIAbilityContext
            // context.startAbility({
            //   abilityName: 'PayAbility', // 拉起哪个ability
            //   bundleName: 'com.itheima.study', // 哪个包
            //   parameters: {
            //     price: ~~(Math.random() * 1000)
            //   }
            // }) // 拉起窗口

            const result = await context.startAbilityForResult({
              abilityName: 'PayAbility', // 拉起哪个ability
              bundleName: 'com.example.myharmonycode', // 哪个包
              parameters: {
                price: ~~(Math.random() * 1000)
              }
            }) // 拉起窗口
            const isOK = result.want?.parameters!["paySuccess"] as boolean
            if (isOK) {
              promptAction.showToast({ message: '支付成功' })
            } else {
              promptAction.showToast({ message: '支付失败' })
            }
          })
      }
    }
    .title("微信支付")
  }
}

export default WeChatPay