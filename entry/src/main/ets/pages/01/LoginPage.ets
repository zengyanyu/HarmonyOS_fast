import { promptAction, router } from '@kit.ArkUI';

const TAG: string = '[LoginPage]';

@Entry
@Component
struct LoginPage {
  @State username: string = 'admin';
  @State password: string = '123456';

  // 判断按钮是否可用,当用户名和密码都有值的时候,按钮才进行激活
  getBtnEnabled() {
    return !!(this.username && this.password)
  }

  login() {
    if (this.username === 'admin' && this.password === '123456') {
      // promptAction.showToast({ message: '登录成功' })
      // 表示登录成功-进行页面跳转
      // 页面跳转
      router.pushUrl({
        url: 'pages/06/MainStructCase'
      })
    } else {
      // 登录失败
    }
  }

  build() {
    Column({ space: 20 }) {
      Text('登录页面')
        .fontSize(40)
        .width('100%')
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)

      TextInput({
        placeholder: 'username'
        // 双向绑定数据
      , text: $$this.username
      })
        .height(50)
        .fontSize(16)
        .margin({ bottom: 10 })
      // .onChange((value: string) => {
      //   this.username = value;
      // })
      TextInput({
        placeholder: 'password',
        // 双向绑定数据
        text: $$this.password
      })
        .height(50)
        .fontSize(16)
        .margin({ bottom: 10 })
        .type(InputType.Password) // 设置类型为密码
      // .onChange((value: string) => {
      //   this.password = value;
      // })
      Button('登录')
        .height(50)
        .width('100%')
        .fontSize(16)
        .margin({ bottom: 10 })
        .onClick(() => {
          // 登录
          this.login();
        })
        .enabled(this.getBtnEnabled())
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .justifyContent(FlexAlign.Center)
  }
}
