@Entry
@Component
struct FlexLayout {

  build() {
    Flex({
      direction:FlexDirection.Row,
      // 换行
      wrap:FlexWrap.Wrap,
      // 主轴对齐方式
      justifyContent:FlexAlign.Center
    }){
      Row(){
      }.width(100).aspectRatio(1).backgroundColor(Color.Blue)
      Row(){
      }.width(100).aspectRatio(1).backgroundColor(Color.Pink)
      Row(){
      }.width(100).aspectRatio(1).backgroundColor(Color.Blue)
      Row(){
      }.width(100).aspectRatio(1).backgroundColor(Color.Pink)
      Row(){
      }.width(100).aspectRatio(1).backgroundColor(Color.Blue)
      Row(){
      }.width(100).aspectRatio(1).backgroundColor(Color.Pink)
      Row(){
      }.width(100).aspectRatio(1).backgroundColor(Color.Blue)
      Row(){
      }.width(100).aspectRatio(1).backgroundColor(Color.Pink)
    }
  }
}