@Entry
@Component
struct ConditionCase {
  @State message: string = 'Hello World';
  @State showImg: boolean = false;
  @State selectIndex: number = -1;

  build() {
    Row() {
      Column({ space: 20 }) {
        Toggle({
          type: ToggleType.Switch
        }).onChange((isON) => {
          this.showImg = isON;
        })
        Text(this.showImg+"")
        if (this.showImg) {
          Image($r('app.media.xinhao'))
            .width(150)
            .height(150)
        }
        Image($r('app.media.xinhao'))
          .width(150)
          .height(150)
          // 设置透明度
          .opacity(this.showImg?1:0)

        Image($r('app.media.xinhao'))
          .width(150)
          .height(150)
          // 隐藏： Visibility.Hidden：表示占位，Visibility.None 表示不占位
          .visibility(this.showImg?Visibility.Visible:Visibility.Hidden)

        // 放置一个Select
        Select([{ value: '勇士' }, { value: "湖人" }, { value: "太阳" }])
          .onSelect((index) => {
            this.selectIndex = index;
          })
        if (this.selectIndex === 0) {
          Text("库里")
        } else if (this.selectIndex === 1) {
          Text("詹姆斯")
        } else if (this.selectIndex === 2) {
          Text("杜兰特")
        }
      }.width('100%')
    }.height('100%')
  }
}