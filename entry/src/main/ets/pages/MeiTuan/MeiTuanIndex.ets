import MTBottom from './components/MTBottom'
import MTCart from './components/MTCart'
import MTMain from './components/MTMain'
import MTTop from './components/MTTop'
import { store } from './utils/CartStore'
import { FoodItem } from './viewmodels'

@Entry
@Component
struct MeiTuanIndex {
  // 显示购物车
  @Provide
  showCart: boolean = false
  @Provide
  userCart: FoodItem[] = store.getCarts() // 获取所有购物车数据

  // 初始化方法
  aboutToAppear() {
    getContext().eventHub.on("changeCart", () => {
      this.userCart = store.getCarts() // 更新购物车数据
    })
  }

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