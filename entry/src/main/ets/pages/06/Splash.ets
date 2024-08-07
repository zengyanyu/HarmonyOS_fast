// 广告
import { router } from '@kit.ArkUI';

@Entry
@Component
struct Splash {
  // 默认为5秒钟
  @State num: number = 5
  @State timer: number = -1;

  // 页面初始化
  aboutToAppear(): void {
    this.beginRun(); // 执行定时器
  }

  // 页面组件销毁方法
  aboutToDisappear(): void {
  }

  // 定时器方法
  beginRun() {
    // 设置定时器
    this.timer = setInterval(() => {
      if (this.num == 0) {
        // 清空定时器
        clearTimeout(this.timer)

        // 页面跳转
        router.pushUrl({
          url: 'pages/01/LoginPage'
        })
      } else {
        // num--
        this.num--;
      }
    }, 1000)
  }

  build() {
    Column() {
      Text(this.num + "秒跳转广告")
        .width('100%')
        .padding({
          top: 20,
          right: 20
        })
        .textAlign(TextAlign.End)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.White)
        .onClick(() => {
          // 点击事件的,清空倒计时,直接跳转到登录页面
          router.pushUrl({
            url: 'pages/01/LoginPage'
          })
        })
    }
    .height('100%')
    .width('100%')
    .backgroundImage('http://gips3.baidu.com/it/u=100751361,1567855012&fm=3028&app=3028&f=JPEG&fmt=auto?w=960&h=1280')
    // 设置背景颜色大小
    .backgroundImageSize({
      width: '100%',
      height: '100%'
    })
  }
}