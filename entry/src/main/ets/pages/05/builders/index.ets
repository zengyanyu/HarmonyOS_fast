@Builder
function getSelectItem(item: string) {
  Row() {
    Text() {
      Span(item)
      Span(".选项")
    }
    .fontSize(20)
  }
  .width("100%")
  .height(60)
  .borderRadius(10)
  .backgroundColor("#dcd9da")
  .padding({
    left: 20,
    right: 20
  })
}

export { getSelectItem }
