import { promptAction, router } from '@kit.ArkUI';

// 用户信息
export interface UserInfo {
  username: string
  age: number
  avatar: string
}

export class UserInfoModel implements UserInfo {
  username: string = ''
  age: number = 0
  avatar: string = ''

  constructor(model: UserInfo) {
    this.username = model.username
    this.age = model.age
    this.avatar = model.avatar
  }
}

// 持久化
PersistentStorage.persistProp<UserInfoModel>('userInfo', new UserInfoModel({} as UserInfo))

@Entry
@Component
struct AppStorageCaseLogin {
  @State
  username: string = 'admin'
  @State
  password: string = '123456'
  @StorageProp("userInfo")
  user: UserInfoModel = new UserInfoModel({} as UserInfo)

  isEnabled() {
    return !!(this.username && this.password);
  }

  login() {
    if (this.username === 'admin' && this.password === '123456') {
      // 登录成功
      // promptAction.showToast({ message: '登录成功' })
      AppStorage.setOrCreate<UserInfoModel>('userInfo', new UserInfoModel({
        username: '曾衍育',
        age: 20,
        avatar: '/pages/05/assets/9.webp'
      }))
      // 持久化
      PersistentStorage.persistProp<UserInfoModel>('userInfo', new UserInfoModel({} as UserInfo))
      console.log("loginInfo_" + JSON.stringify(AppStorage.get("userInfo")));

      // 页面跳转
      router.pushUrl({
        url: 'pages/06/AppStorageCaseMain'
      })
    } else {
      // 登录失败
      promptAction.showToast({ message: '登录失败' })
    }
  }

  build() {
    Column({ space: 20 }) {
      TextInput({
        placeholder: "请输入用户名",
        text: $$this.username
      })

      TextInput({
        placeholder: "请输入密码",
        text: $$this.password,
      }).type(InputType.Password)

      Button('登录').width('100%')
        .onClick(() => {
          this.login();
        })
        .enabled(this.isEnabled())
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .padding(20)
    .backgroundColor('#f4f4f4')
  }
}

