import { RouterBuilder } from './build'

@Entry
@Component
struct NavigationPathCase {
  // 实例化一个对象绑定到Navigation
  @Provide
  pathStack: NavPathStack = new NavPathStack()
  @State
  list: WeChatItem[] = [{
    title: '朋友圈',
    icon: $r("sys.media.ohos_ic_public_arrow_right"),
    isDivider: true,
    toName: 'friend'
  }, {
    title: '视频号',
    icon: $r("sys.media.ohos_ic_public_arrow_right"),
    toName: 'video'
  }, {
    title: '直播',
    icon: $r("sys.media.ohos_ic_public_arrow_right"),
    isDivider: true,
    toName: 'live'
  }
    , {
      title: '扫一扫',
      icon: $r("sys.media.ohos_ic_public_arrow_right"),
      toName: 'scan'
    }, {
      title: '听一听',
      icon: $r("sys.media.ohos_ic_public_arrow_right"),
      isDivider: true,
      toName: 'listen'
    }
    , {
      title: '看一看',
      icon: $r("sys.media.ohos_ic_public_arrow_right"),
      toName: 'look'
    }, {
      title: '搜一搜',
      icon: $r("sys.media.ohos_ic_public_arrow_right"),
      isDivider: true,
      toName: 'search'
    }, {
      title: '摇一摇',
      icon: $r("sys.media.ohos_ic_public_arrow_right"),
      toName: 'shake'
    },
    {
      title: '微信支付',
      icon: $r("sys.media.ohos_ic_public_arrow_right"),
      toName: 'wechat_pay'
    }]

  // 获取导航菜单
  @Builder
  getNavBarMenu() {
    Column() {
      ForEach(this.list, (item: WeChatItem, index: number) => {
        Row() {
          Text(item.title)

          Image(item.icon)
            .width(30)
            .aspectRatio(1)
            .fillColor("#c6c6c6")
        }
        .margin({
          bottom: item.isDivider ? 10 : 0
        })
        .border({
          color: '#eaeaea',
          width: {
            bottom: 1
          }
        })
        .onClick(() => {
          // 完成跳转
          this.pathStack.pushPathByName(item.toName, null)
        })
        .justifyContent(FlexAlign.SpaceBetween)
        .backgroundColor(Color.White)
        .width('100%')
        .height(60)
        .padding({
          left: 20,
          right: 20
        })

      })
    }.width('100%')

  }

  build() {
    Navigation(this.pathStack) {
      this.getNavBarMenu()
    } /*.title("发现")*/
    .height('100%')
    .width('100%')
    .navDestination(RouterBuilder)
    .backgroundColor("#eaeaea")
  }
}

class WeChatItem {
  title: string = ""
  icon: ResourceStr = ""
  isDivider?: boolean
  toName?: string
}