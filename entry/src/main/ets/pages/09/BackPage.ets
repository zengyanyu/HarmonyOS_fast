import { router } from '@kit.ArkUI'

@Entry
@Component
struct BackPage {
  aboutToAppear() {
    // 表示在该页面注册了一个提示的返回检查
    // showAlertBeforeBackPage不能定义按钮和按钮状态操作
    router.showAlertBeforeBackPage({
      message: '老哥 别走了,陪我玩会'
    })
  }

  build() {
    Column() {

      Text('注意:需要点击返回,才能测试aboutToAppear方法中的代码')

    }
    .height('100%')
    .width('100%')
  }
}