// 神领快递
import promptAction from '@ohos.promptAction';

@Entry
@Component
struct ShenLingKD {
  build() {

    Column() {
      Row({ space: 15 }) {
        Text('9:41').margin({
          left: 15
        })
        Row({ space: 5 }) {
          Image($r('app.media.xinhao')).width(30)
            .fillColor('#000')
          Image($r('app.media.WIFI')).width(30)
            .fillColor('#000')
          Image($r("app.media.battery_full")).width(30)
            .fillColor('#000')
        }.layoutWeight(1).justifyContent(FlexAlign.End)
      }

      Row() {
        Text('神领快递').fontSize(30).fontWeight(700)
      }.margin({
        top: 35
      })

      Row() {
        Text("手机号登录").fontSize(30).fontWeight(700)

        Row() {
          Text("账号登录").fontColor(Color.Red).margin({
            right: 5
          }).fontSize(20)
          Image($r('app.media.right_')).width(20).fillColor(Color.Red)
        }.layoutWeight(1).justifyContent(FlexAlign.End)
      }.margin({
        top: 50
      })

      Column() {
        TextInput({
          placeholder: '请输入手机号'
        }).border({
          width: {
            bottom: 0.5
          }
        }).borderRadius(0).backgroundColor(Color.White)

        Row() {
          TextInput({
            placeholder: '请输入验证码'
          })
            .border({
              width: {
                bottom: 0.5
              }
            })
            .margin({
              top: 15
            })
            .width('70%')
            .borderRadius(0)
            .backgroundColor(Color.White)

          Text('获取验证码')
            .backgroundColor(Color.White)
            .borderRadius(0)
            .fontColor('#000')
            .border({
              width: {
                left: 0.5
              }
            })
            .padding({
              left: 15
            })
            .layoutWeight(1)
        }
      }
      .margin({
        top: 80
      })

      Button("登录")
        .backgroundColor(Color.Red)
        .fontColor(Color.White)
        .height(60)
        .fontSize(30)
        .width('100%')
        .margin({
          top: 50
        })
        .onClick(() => {
          promptAction.showToast({ message: '登录成功' })
        })

    }.margin({
      left: 15
    })
    .padding({
      right: 15
    })
  }

}