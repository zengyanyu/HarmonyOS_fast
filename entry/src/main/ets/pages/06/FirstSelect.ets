import { preferences } from '@kit.ArkData';


// 首选项
@Entry
@Component
struct FirstSelect {
  @State
  num: number = 0

  aboutToAppear(): void {
    // 读取首选项的值
    this.getData()
  }

  getData() {
    this.num = new TokenManager().getToken()
  }

  build() {
    Column({ space: 20 }) {
      Text(this.num.toString())
        .fontSize(60)
      Button("写入首选项")
        .onClick(() => {
          new TokenManager().setToken("999999")
        })
    }
    .height('100%')
    .width('100%')
  }
}


// class 读写首选项
export class TokenManager {
  context?: Context

  // 获取仓库
  getStore() {
    // Sync是同步 非Sync是异步
    // 传入上下文
    // 页面(getContext())和UIAbility(this.context)
    return preferences.getPreferencesSync(this.context || getContext(), {
      name: 'token'  // 仓库名 文件名
    })
  }

  // getList => Promise<123>
  // getListSync => 123

  // 写入token
  async setToken(token: string) {
    const store = this.getStore() // 获取仓库
    store.putSync("abc", token)
    // 必须得flush一下
    await store.flush() // 写入磁盘

  }

  // 获取token
  getToken() {
    const store = this.getStore()
    return store.getSync("abc", 10) as number
  }
}