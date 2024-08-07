// 主页结构Case
@Entry
@Component
struct MainStructCase {
  @State
  currentIndex: number = 0;
  @State
  tabList: MainTabItem[] = [{
    icon: $r('app.media.ic_public_message'),
    name: 'plan',
    title: '任务',
    selectIcon: $r('app.media.ic_public_message_filled')
  }, {
    icon: $r('app.media.ic_gallery_discover'),
    name: 'message',
    title: '消息',
    selectIcon: $r('app.media.ic_gallery_discover_filled')
  }, {
    icon: $r('app.media.ic_public_contacts'),
    name: 'my',
    title: '我的',
    selectIcon: $r('app.media.ic_public_contacts_filled')
  }]

  @Builder
  getTabBar(item: MainTabItem) {
    Column({ space: 10 }) {
      Image(this.tabList[this.currentIndex].name === item.name ? item.selectIcon : item.icon)
        .width(20)
        .aspectRatio(1)

      Text(item.title)
        .fontColor(this.tabList[this.currentIndex].name === item.name ? Color.Red : '182, 182, 182')

    }
  }

  build() {
    Column() {
      Tabs({
        // 双向绑定数据
        index: $$this.currentIndex
      }) {
        ForEach(this.tabList, (item: MainTabItem, index: number) => {
          TabContent() {
            // 调用单独的组件
            if (item.name === 'plan') {
              // 任务
              PlanComponent();
            } else if (item.name === 'message') {
              // 消息
              MessageComponent();
            } else if (item.name === 'my') {
              // 我的
              MyComponent();
            }
          }.tabBar(this.getTabBar(item))
        })
      }
      .barPosition(BarPosition.End)
    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.White)
  }
}

// 任务组件中的内容
@Component
struct PlanComponent {
  build() {
    Column() {
      Tabs() {
        TabContent() {
          Column({ space: 10 }) {
            Image($r('app.media.awitT'))
              .width(200)
              .height(100)
            Text('无待提货物').width('100%').textAlign(TextAlign.Center)
              .fontSize(14)
              .fontColor('186, 186, 186')
          }.width('100%')
          .height('100%')

          .justifyContent(FlexAlign.Center)
          // 背景颜色为灰色
          .backgroundColor('#f4f4f4')
        }.tabBar('带提货')
        .backgroundColor(Color.White)


        TabContent() {

        }.tabBar('在途')

        TabContent() {

        }.tabBar('以完成')
      }

    }.width('100%')
    .height('100%')
    .backgroundColor(Color.White)

  }
}

// 消息组件中的内容
@Component
struct MessageComponent {
  build() {

  }
}

// 我的组件中的内容
@Component
struct MyComponent {
  build() {

  }
}

class MainTabItem {
  icon: ResourceStr = ''
  name: string = ''
  title: string = ''
  selectIcon: ResourceStr = ''
}