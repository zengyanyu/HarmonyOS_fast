import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct GoodWaterFlowCase {
  @State
  list: GoodItem[] = [
    {
      "id": 1,
      "goods_name": "班俏BANQIAO超火ins潮卫衣女士2020秋季新款韩版宽松慵懒风薄款外套带帽上衣",
      "goods_img": "/pages/05/assets/1.webp",
      "goods_price": 108,
      "goods_count": 1,
    },
    {
      "id": 2,
      "goods_name": "嘉叶希连帽卫衣女春秋薄款2020新款宽松bf韩版字母印花中长款外套ins潮",
      "goods_img": "/pages/05/assets/2.webp",
      "goods_price": 129,
      "goods_count": 1,
    },
    {
      "id": 3,
      "goods_name": "思蜜怡2020休闲运动套装女春秋季新款时尚大码宽松长袖卫衣两件套",
      "goods_img": "/pages/05/assets/3.webp",
      "goods_price": 198,
      "goods_count": 1,
    },
    {
      "id": 4,
      "goods_name": "思蜜怡卫衣女加绒加厚2020秋冬装新款韩版宽松上衣连帽中长款外套",
      "goods_img": "/pages/05/assets/4.webp",
      "goods_price": 99,
      "goods_count": 1,
    },
    {
      "id": 5,
      "goods_name": "幂凝早秋季卫衣女春秋装韩版宽松中长款假两件上衣薄款ins盐系外套潮",
      "goods_img": "/pages/05/assets/5.webp",
      "goods_price": 156,
      "goods_count": 1,
    },
    {
      "id": 6,
      "goods_name": "ME&CITY女装冬季新款针织抽绳休闲连帽卫衣女",
      "goods_img": "/pages/05/assets/6.webp",
      "goods_price": 142.8,
      "goods_count": 1,
    },
    {
      "id": 7,
      "goods_name": "幂凝假两件女士卫衣秋冬女装2020年新款韩版宽松春秋季薄款ins潮外套",
      "goods_img": "/pages/05/assets/7.webp",
      "goods_price": 219,
      "goods_count": 2,
    },
    {
      "id": 8,
      "goods_name": "依魅人2020休闲运动衣套装女秋季新款秋季韩版宽松卫衣 时尚两件套",
      "goods_img": "/pages/05/assets/8.webp",
      "goods_price": 178,
      "goods_count": 1,
    },
    {
      "id": 9,
      "goods_name": "芷臻(zhizhen)加厚卫衣2020春秋季女长袖韩版宽松短款加绒春秋装连帽开衫外套冬",
      "goods_img": "/pages/05/assets/9.webp",
      "goods_price": 128,
      "goods_count": 1,
    },
    {
      "id": 10,
      "goods_name": "Semir森马卫衣女冬装2019新款可爱甜美大撞色小清新连帽薄绒女士套头衫",
      "goods_img": "/pages/05/assets/10.webp",
      "goods_price": 153,
      "goods_count": 1,
    }
  ]
  @State
  loading: boolean = false // 是否正在加载数据

  @Builder
  getGoodBuilder(item: GoodItem, index: number) {
    FlowItem() {
      Column({ space: 10 }) {
        Image(item.goods_img)
          .height(index % 2 ? 180 : 220)
        Text(item.goods_name)
          .fontSize(14)
          .lineHeight(22)
      }
    }
  }

  @Builder
  getFooterBuilder() {
    // 正在加载
    if (this.loading) {
      Row({ space: 6 }) {
        Text("数据加载中...")
        LoadingProgress()
          .width(20)
          .height(20)
      }
      .justifyContent(FlexAlign.Center)
      .width("100%")
      .height(60)
    }
  }

  loadMore() {
    promptAction.showToast({ message: '滚动底部啦' })
    return new Promise<boolean>((resolve, reject) => {
      setTimeout(() => {
        // 等待一秒钟
        // 得到新的数据 放到新的数组里面
        this.list.push(...this.list.slice(0, 9)) // 直接往里面push10条数据
        resolve(true)
      }, 1000)
    })
  }

  build() {
    WaterFlow({ footer: this.getFooterBuilder }) {

      ForEach(this.list, (item: GoodItem, index: number) => {
        // 使用FlowItem
        this.getGoodBuilder(item, index)
      })

    }
    .columnsTemplate('1fr 1fr')
    .rowsGap(10)
    .columnsGap(10)
    .padding(20)
    .onReachEnd(async () => {
      // promptAction.showToast({ message: '滚动底部啦' })
      if (!this.loading) {
        try {
          this.loading = true // 关门操作
          await this.loadMore() // 执行完毕
          this.loading = false // 开门操作
        } catch (error) {
        }
      }

    })
  }
}

class GoodItem {
  id: number = 0
  goods_name: string = ""
  goods_img: string = ""
  goods_price: number = 0
  goods_count: number = 0
}
