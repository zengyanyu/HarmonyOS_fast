// 手势--长按手势和滑动手势
@Entry
@Component
struct GestureCase {
  @State
  showVoice: boolean = false // 是否显示语音
  @State
  currentState: VoiceEnum = VoiceEnum.NONE
  screenWidth: number = 0

  aboutToAppear() {
  }

  @Builder
  getVoiceBuilder() {
    Column() {
      Row() {
        Row() {
          Text("删")
            .fontSize(30)
            .fontColor(this.currentState === VoiceEnum.DELETE ? Color.Red : Color.White)
        }
        .rotate({
          angle: -30
        })
        .width(80)
        .aspectRatio(1)
        .backgroundColor(Color.Grey)
        .borderRadius(40)
        .justifyContent(FlexAlign.Center)

        Row() {
          Text("文")
            .fontSize(30)
            .fontColor(this.currentState === VoiceEnum.TEXT ? Color.Red : Color.White)
        }
        .rotate({
          angle: 30
        })
        .width(80)
        .aspectRatio(1)
        .backgroundColor(Color.Grey)
        .borderRadius(40)
        .justifyContent(FlexAlign.Center)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .alignItems(VerticalAlign.Center)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor("rgba(0,0,0, 0.2)")
    .padding({
      left: 40,
      right: 40
    })
  }

  build() {
    Column({ space: 100 }) {
      Text("手势案例")
        .fontSize(40)
        .fontWeight(FontWeight.Bold)

      Button("开始录音").width('100%')
        .onClick(() => {

        })
        .gesture(GestureGroup(
          GestureMode.Parallel, // 互不影响的模式
          // 长按手势
          LongPressGesture().onAction(() => {
            this.showVoice = true
          }).onActionEnd(() => {
            this.showVoice = false
          }),
          // 滑动手势
          PanGesture()
            .onActionUpdate((event) => {
              if (event.fingerList[0].globalX < this.screenWidth / 2) {
                this.currentState = VoiceEnum.DELETE
              } else {
                this.currentState = VoiceEnum.TEXT
              }
            })
        ))

    }
    .height('100%')
    .width('100%')
    .padding(20)
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .bindContentCover($$this.showVoice, this.getVoiceBuilder(), {
      modalTransition: ModalTransition.NONE
    })
    .onAreaChange((oldArea, newArea) => {
      this.screenWidth = newArea.width as number
    })
  }
}

enum VoiceEnum {
  DELETE,
  TEXT,
  NONE
}