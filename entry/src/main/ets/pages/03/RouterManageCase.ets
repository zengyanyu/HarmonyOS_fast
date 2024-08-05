import { router } from '@kit.ArkUI';

// 路由管理界面
@Entry
@Component
struct RouterManageCase {
  @State message: string = 'Hello World';
  list: RouterManage[] = [{
    name: '闪充—管理页面',
    url: 'pages/03/ShanChongMainCase'
  }, {
    name: '登录',
    url: 'pages/03/LoginCase'
  }, {
    name: 'Stack堆叠-管理页面',
    url: 'pages/03/StackCase'
  }, {
    // 注意：写url的时候，最前面加/可以有提示，页面地址写完之后，记得把最前面的/删除
    name: '渐变色-管理页面',
    url: 'pages/03/LinearGrantCase'
  }, {
    name: '知乎列表',
    url: 'pages/04/Zhihu/ZhihuDemo'
  }]

  build() {
    Column({ space: 20 }) {
      List() {
        ForEach(this.list, (item: RouterManage, index: number) => {
          // List组件中只能放ListItem子组件
          ListItem() {
            Text(item.name)
              .width('100%')
              .fontWeight(FontWeight.Bold)
              .fontSize(30)
              .textAlign(TextAlign.Center)
              .backgroundColor(Color.Gray)
              .fontSize(20)
              .margin(10)
              .onClick(() => {
                router.pushUrl({
                  url: item.url
                })
              })
          }
          .width('100%')
        }
        )
      }
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}

class RouterManage {
  name: string = ''
  url: string = ''
}