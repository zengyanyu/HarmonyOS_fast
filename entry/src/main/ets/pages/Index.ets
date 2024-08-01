@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Header();
      Main();
      Footer();
    }
  }
}

// 头部
@Component
struct Header {
  build() {

    Row() {
      Text("Headler")
    }
    .width('100%')
    .height(50)
    .backgroundColor(Color.Pink).
    // 文字内容居中
    justifyContent(FlexAlign.Center)

  }
}


// 主体
@Component
struct Main {
  build() {
    Row() {
      Text("Main").fontColor(Color.White)
    }
    .width('100%')
    .height(200)
    .backgroundColor(Color.Blue).
    // 文字内容居中
    justifyContent(FlexAlign.Center)
  }
}

// 底部
@Component
struct Footer {
  build() {
    Row() {
      Text("Footer")
    }
    .width('100%')
    .height(50)
    .backgroundColor(Color.Pink).
    // 文字内容居中
    justifyContent(FlexAlign.Center)
  }
}