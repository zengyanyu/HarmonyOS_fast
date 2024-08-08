// class 读写首选项
import { preferences } from '@kit.ArkData'

export class AuthManager {
  context?: Context

  // 获取仓库
  getStore() {
    // Sync是同步 非Sync是异步
    // 传入上下文
    // 页面(getContext())和UIAbility(this.context)
    return preferences.getPreferencesSync(this.context || getContext(), {
      name: 'auth_token'  // 仓库名 文件名
    })
  }

  // getList => Promise<123>
  // getListSync => 123

  // 写入token
  async setToken(token: string) {
    const store = this.getStore() // 获取仓库
    store.putSync("auth", token)
    // 必须得flush一下
    await store.flush() // 写入磁盘

  }

  // 获取token
  getToken() {
    const store = this.getStore()
    return store.getSync("auth", "") as string
  }
}