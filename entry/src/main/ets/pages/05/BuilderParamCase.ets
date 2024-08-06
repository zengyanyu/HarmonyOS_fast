import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct BuilderParamCase {
  name: string = "我是父组件"

  @Builder
  getImageContent() {
    Row() {
      Image("http://gips2.baidu.com/it/u=3093819921,829322739&fm=3028&app=3028&f=JPEG&fmt=auto?w=1024&h=1024")
        .width("100%")
        .height(100)
    }
    .onClick(() => {
      promptAction.showToast({ message: this.name })
    })
  }

  @Builder
  getBtnContent() {
    Button("底部按钮")
      .width("100%")
  }

  build() {
    Column({ space: 10 }) {
      HmCard({
        getContent: () => {
          // this指向父组件
          this.getImageContent()
        },
        // getFooterContent: () => {
        //   this.getBtnContent()
        // }
        // getContent: this.getImageContent // 渲染没问题 逻辑非常容易乱
      })

      HmCard() {
        // 尾随闭包
        // 大括号里面的内容会被自动封装成一个builder函数传递给默认的那一个builder函数
        this.getImageContent() // 调用
        //  this.getImageContent // 没有执行
      }

    }
    .padding(20)
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Green)
  }
}

@Component
struct HmCard {
  name: string = "我是子组件"
  @BuilderParam
  getContent: () => void = this.getDefaultBuilder

  // @BuilderParam
  // getFooterContent: () => void = this.getDefaultBuilder

  @Builder
  getDefaultBuilder() {
    Text("默认内容")
  }

  build() {
    Column({ space: 20 }) {
      Row() {
        Text("取消")
        Text("确定")
      }
      .width("100%")
      .padding({
        left: 10,
        right: 10
      })
      .justifyContent(FlexAlign.SpaceBetween)
      .height(60)
      .border({
        color: '#ccc',
        width: {
          bottom: 2
        }
      })


      // 放置内容
      // 先判断函数是否存在
      if (this.getContent) {
        this.getContent()
      }
      // if (this.getFooterContent) {
      //   this.getFooterContent()
      // }
    }
    .width("100%")
    .height(300)
    .backgroundColor(Color.White)
    .borderRadius(10)
  }
}


// 函数中的this指向谁？ => （没有箭头函数的情况下）this永远指向调用者