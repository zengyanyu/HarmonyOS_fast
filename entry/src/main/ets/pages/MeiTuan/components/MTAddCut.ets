import { store } from '../utils/CartStore'
import { FoodItem, OPERATE_TYPE } from '../viewmodels'

@Component
struct MTAddCut {
  item: FoodItem = new FoodItem() // 当前菜
  @Consume
  userCart: FoodItem[] // 所有购物车

  // 获取每一个菜品的数量
  getCount() {
    // 获取当前item的在购物车中的数量
    return this.userCart.find(item => item.id === this.item.id)?.count || 0
  }

  build() {
    Row({ space: 8 }) {
      Row() {
        Image($r('app.media.ic_screenshot_line'))
          .width(10)
          .aspectRatio(1)
      }
      .width(16)
      .aspectRatio(1)
      .justifyContent(FlexAlign.Center)
      .backgroundColor($r("app.color.white"))
      .borderRadius(4)
      .border({ width: 0.5, color: $r("app.color.main_color") })
      .visibility(this.getCount() ? Visibility.Visible : Visibility.Hidden)
      .onClick(() => {
        store.addCutCart(OPERATE_TYPE.CUT, this.item)
      })

      Text(this.getCount().toString()).fontSize(14)
        .visibility(this.getCount() ? Visibility.Visible : Visibility.Hidden)
      Row() {
        Image($r('app.media.ic_public_add_filled'))
          .width(10)
          .aspectRatio(1)
      }
      .width(16)
      .aspectRatio(1)
      .justifyContent(FlexAlign.Center)
      .backgroundColor($r("app.color.main_color"))
      .borderRadius(4)
      .onClick(() => {
        store.addCutCart(OPERATE_TYPE.ADD, this.item)
      })
    }
  }
}

export default MTAddCut