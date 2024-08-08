import { http } from '@kit.NetworkKit';
import { promptAction, router } from '@kit.ArkUI';
import { AuthManager } from './AuthManager';

@Entry
@Component
struct HttpCase {
  @State
  mobile: string = '' // 手机号
  @State
  code: string = '' // 验证码
  @State
  count: number = 5; // 验证码倒计时
  @State
  timer: number = 0;

  // 判断按钮是否禁用
  getBtnEnabled() {
    return !!(this.mobile && this.code)
  }

  // 发送验证码
  sendCode() {
    // 倒计时时间为5秒,并且有手机号
    if (this.count === 5 && this.mobile) {
      this.sendHttp();
      // 开始倒计时
      this.beginRun();
    }
  }

  // 通过Http方式发送验证码
  async sendHttp() {
    const request = http.createHttp();
    // promptAction.showToast({ message: this.mobile })
    await request.request(`https://toutiao.itheima.net/v1_0/sms/codes/${this.mobile}`)
    promptAction.showToast({ message: '发送验证码成功' })
    // 把请求对象销毁
    request.destroy()
  }

  // 开始倒计时
  beginRun() {
    this.timer = setInterval(() => {
      if (this.count === 0) {
        clearInterval(this.timer)
        this.count = 5;
        return
      }
      this.count--;
    }, 1000)
  }

  // 登录操作
  async login() {
    const req = http.createHttp()
    const result = await req.request("https://toutiao.itheima.net/v1_0/authorizations", {
      method: http.RequestMethod.POST,
      header: {
        "Content-Type": "application/json" // 约束传入的body参数为对象类型
      },
      extraData: {
        mobile: this.mobile,
        code: this.code
      }
    })
    req.destroy()

    const res = JSON.parse(result.result as string) as ResponseData<TokenObj>
    promptAction.showToast({ message: res.data!.token })
    new AuthManager().setToken(res.data!.token) // 设置首选项  为了写入磁盘 为了进入判断
    AppStorage.setOrCreate<string>("token", res.data!.token) // 用起来很简单
    // 页面跳转
    router.pushUrl({
      url: 'pages/06/AppStorageCaseMain'
    })
  }

  build() {
    Column({ space: 20 }) {
      Text("登录页面")
        .width('100%')
        .fontSize(40)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)
        .padding({
          bottom: 50
        })

      TextInput({
        placeholder: "请输入用户名",
        text: $$this.mobile
      })
      Row({ space: 20 }) {
        TextInput({
          placeholder: '请输入验证码',
          text: $$this.code
        })
          .layoutWeight(1)
        Text(this.count === 5 ? '获取验证码' : `还剩${this.count}秒`)
          .onClick(() => {
            // 发送验证码
            this.sendCode();
          })
      }
      .width('100%')

      Button("登录")
        .fontSize(30)
        .width('100%')
        .onClick(() => {
          // 登录操作
          this.login();
        })
        .enabled(this.getBtnEnabled())
    }
    .height('100%')
    .width('100%')
    .padding(20)
    .justifyContent(FlexAlign.Center)
  }
}

class ResponseData<T> {
  data: T | null = null
  message: string = ''
}

class TokenObj {
  token: string = ""
  refresh_token: string = ""
}


