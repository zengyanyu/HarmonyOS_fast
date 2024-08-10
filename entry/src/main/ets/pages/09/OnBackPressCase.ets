import { promptAction, router } from '@kit.ArkUI'

@Entry
@Component
struct OnBackPressCase {
  //
  onBackPress(): boolean | void {
    // showDialog 可以自定义按钮
    promptAction.showDialog({
      title: '温馨提示!',
      message: '今晚打麻将吗?',
      buttons: [{
        text: '回家', // 走
        color: '#ffea7f7f',
      }, {
        text: '可以', // 留
        color: '#00F'
      }]
    }).then(res => {
      if (res.index === 0) {
        router.back()
      }
    })
    // 通过自定义的方式来使用返回
    return true
  }

  build() {
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}