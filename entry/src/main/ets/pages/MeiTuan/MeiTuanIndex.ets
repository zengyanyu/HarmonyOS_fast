import MTBottom from './components/MTBottom'
import MTCart from './components/MTCart'
import MTMain from './components/MTMain'
import MTTop from './components/MTTop'

@Entry
@Component
struct MeiTuanIndex {
  // 显示购物车
  @Provide
  showCart: boolean = false

  build() {
    Column() {
      Stack({ alignContent: Alignment.Bottom }) {
        Column() {
          // 头部
          MTTop();
          // 中间部分组件
          MTMain()
        }
        .height("100%")

        // 显示购物车
        if (this.showCart) {
          MTCart();
        }
        // 底部组件
        MTBottom()
      }
      .layoutWeight(1)
    }
    .height('100%')
    .width('100%')
    .backgroundColor($r("app.color.white"))
  }
}