@Entry
@Component
struct GridCase {
  build() {
    Grid() {
      // 调用组件
      GridItemCase();
      GridItemCase();
      GridItemCase();
      GridItemCase();
      GridItemCase();
      GridItemCase();
      GridItemCase();
      GridItemCase();
      GridItemCase();
      GridItemCase();
      GridItemCase();
      GridItemCase();
    }
    .width('100%')
    .height('100%')
    .columnsTemplate('1fr 1fr')
    // 行间距
    .rowsGap(10)
    // 列间距
    .columnsGap(10)
    .padding(10)

  }
}

@Component
struct GridItemCase {
  build() {
    GridItem() {
      Text("GridItemCase")
    }
    .width('100%')
    .height(200)
    .backgroundColor(Color.Pink)
    // 设置圆角
    .borderRadius(15)
  }
}