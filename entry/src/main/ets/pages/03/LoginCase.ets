// 登录页面案例
import { promptAction, router } from '@kit.ArkUI';

@Entry
@Component
struct LoginCase {
  @State username: string = 'admin';
  @State password: string = '123456';

  login() {
    if (this.username === 'admin' && this.password === '123456') {
      // 登录成功，跳转到主页
      // promptAction.showToast({ message: '登录成功' })
      router.pushUrl({
        // 闪充主页
        // 注意：这里写跳转url的时候，前面加/书写页面才会提示，写完之后，一定要把最前面的/去除
        url: 'pages/03/ShanChongMainCase'
      })
    } else {
      promptAction.showToast({ message: '用户名或者密码错误' })
    }
  }

  getBtnEnable() {
    if (this.username && this.password) {
      return true
    }
    return false
  }

  build() {
    Column({ space: 20 }) {
      Image($r('app.media.shan'))
        .width(80)
      Text("闪充").fontSize(30)
        .fontWeight(FontWeight.Bold)
      Text("行驶保护护航，充电轻松安心")
        .margin({
          bottom: 30
        })

      TextInput({
        placeholder: '请输入用户名',
        // 双向绑定数据
        text: $$this.username
      })

      TextInput({
        placeholder: '请输入密码',
        // 双向绑定数据
        text: $$this.password
      }).type(InputType.Password)

      Text('忘记密码').fontWeight(FontWeight.Bold).width('100%')
        .textAlign(TextAlign.End)

      Button('登录')
        .width('100%')
        .height(60)
        .onClick(() => {
          // 调用登录方法，进行校验操作
          this.login();
        })
        .enabled(this.getBtnEnable())
        .type(ButtonType.Normal)
        .borderRadius(10)

      Text('-第三方账号登录-').fontColor(Color.Gray)
        .margin({
          top: 20
        })

      Flex({
        // alignItems: ItemAlign.Center,
        // // 主轴对齐方式
        // justifyContent: FlexAlign.SpaceEvenly,
        direction: FlexDirection.Row,
        // wrap: FlexWrap.NoWrap,
        justifyContent: FlexAlign.SpaceEvenly,
        // alignItems: ItemAlign.Center
      }
      ) {
        Row() {
          Image($r('app.media.qq')).width(30)
            .fillColor(Color.Blue)

        }.width(80).aspectRatio(1).backgroundColor('#f4f4f4')
        .justifyContent(FlexAlign.Center)
        .borderRadius(10)

        Row() {
          Image($r('app.media.wechat')).width(30)
            .fillColor(Color.Green)
        }.width(80).aspectRatio(1).backgroundColor('#f4f4f4')
        .justifyContent(FlexAlign.Center)
        .borderRadius(10)

        Row() {
          Image($r('app.media.weibo')).width(30)
        }.width(80).aspectRatio(1).backgroundColor('#f4f4f4')
        .justifyContent(FlexAlign.Center)
        .borderRadius(10)
      }
      .width('100%')
      .height(60)
      .margin({
        top: 20
      })

      Row(){
        Text('没有账号？')
        // Text('注册').fontWeight(FontWeight.Bold)
        Button('注册').type(ButtonType.Normal)
          .backgroundColor(Color.White).fontColor(Color.Black)
      }.width('100%')
      .justifyContent(FlexAlign.Center)
      .margin({
        top: 60
      })

    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    // .backgroundColor(Color.Pink)
    .padding(10)
  }
}