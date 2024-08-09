// 购物车
import { FoodItem, OPERATE_TYPE } from '../viewmodels'
import { emitter } from '@kit.BasicServicesKit'

const CART_KEY = "user_cart"
// 声明持久化数据
// AppStorage-> Api/StorageLink("key")

PersistentStorage.persistProp(CART_KEY, []) // 声明初始化数据

// 用来管理购物车  获取购物车   加减购物车   清空购物车
export class CartStore {
  // 获取购物车数据
  getCarts() {
    return (AppStorage.get(CART_KEY) || []) as FoodItem[] // 断言类型
  }

  // 加减购物车
  addCutCart(type: OPERATE_TYPE, food: FoodItem) {

    const list = this.getCarts();
    const f = list.find(item => item.id === food.id) // 有可能找到,也有可能找不到
    console.log("addCutCart_list_" + JSON.stringify(list));
    console.log("food_" + food);
    // 添加购物车
    if (type === OPERATE_TYPE.ADD) {
      // 加菜逻辑
      if (f) {
        // 之前加入过这个菜
        f.count++ // 因为加过 所以数量加1
      } else {
        food.count = 1;
        // 加入到购物车
        list.unshift(food)
      }
    } else if (type === OPERATE_TYPE.CUT) { // 减少购物车
      if (f && f.count > 0) {
        f.count-- // 先减一次
        if (f.count === 0) {
          // 此时就该移除这个数据
          const index = list.findIndex(item => item.id === food.id)
          // 从list列表中移除
          list.splice(index, 1);
        }
      }
    }

    AppStorage.setOrCreate<FoodItem[]>(CART_KEY, [...list]) // 直接设置值
    // 只是写入到全局状态
    getContext().eventHub.emit("changeCart") // 广播事件
  }

  // 清空购物车
  clearCart() {
    AppStorage.setOrCreate<FoodItem[]>(CART_KEY, []) // 直接设置值
    // emitter.emit("changeCart")
    getContext().eventHub.emit("changeCart") // 线程内通信  线程间通信
  }
}

// 所有人公用一个实例 单例模式
export const store = new CartStore()

