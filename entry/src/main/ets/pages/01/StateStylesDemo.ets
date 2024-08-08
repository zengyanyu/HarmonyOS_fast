@Entry
@Component
struct StateStylesDemo {
  @State textEnable: boolean = true;

  @Styles
  disabledStyle() {
    .backgroundColor(Color.Red)
  }

  @Styles
  pressStyle() {
    .width(200)
    .height(80)
    .borderRadius(40)
    .backgroundColor(Color.Pink)
  }

  // 总结：预览器上的聚焦态，只能使用Tab键进行测试（鼠标点击无效）
  @Styles
  inputFocusStyle() {
    .border({
      color: Color.Red,
      width: 1
    })
  }

  build() {
    Row() {
      Column({ space: 20 }) {
        Row() {
          TextInput()
            .height(40)
            .stateStyles({
              // 聚焦态
              focused: this.inputFocusStyle,
              normal: {
                .border({
                  color: Color.Red,
                  width: 0
                })
              }
            })
        }.padding({
          left: 10,
          right: 10
        })

        Row() {
          TextInput()
            .height(40)
            .stateStyles({
              // 聚焦态
              focused: this.inputFocusStyle,
              normal: {
                .border({
                  color: Color.Red,
                  width: 0
                })
              }
            })
        }.padding({
          left: 10,
          right: 10
        })

        Text("测试").textStateStyle().stateStyles({
          pressed: this.pressStyle,
          disabled: this.disabledStyle
        }).enabled(this.textEnable)

        Button("文本设置禁用")
          .onClick(() => {
            this.textEnable = !this.textEnable;
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}

@Extend(Text)
function textStateStyle() {
  .width(100)
  .height(40)
  .borderRadius(20)
  .textAlign(TextAlign.Center)
  .backgroundColor(Color.Gray)
  .fontColor(Color.White)
}