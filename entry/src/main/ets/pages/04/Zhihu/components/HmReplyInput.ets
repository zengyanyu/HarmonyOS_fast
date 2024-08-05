@Component
export struct HmReplyInput {
  @State
  content: string = ""
  // 子传父
  publishComment: (content: string) => void = () => {
  }

  build() {
    Row({ space: 10 }) {
      TextInput({
        placeholder: '请留下您的神评论～',
        // 双向绑定数据
        text: $$this.content
      }).layoutWeight(1)
        .onSubmit(() => {
          if (this.content) {
            this.publishComment(this.content)
            this.content = ""
          }
        })
      Button("发布")
        .onClick(() => {
          if (this.content) {
            this.publishComment(this.content)
            this.content = ""
          }
        })
    }.width('100%')
    .height(50)
    .padding({
      left: 10,
      right: 10,
      top: 4,
      bottom: 4
    })
  }
}