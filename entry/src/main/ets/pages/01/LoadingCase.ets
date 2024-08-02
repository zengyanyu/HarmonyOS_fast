@Entry
@Component
struct LoadingCase {
  @State showLoading: boolean = false;

  // 初始化执行
  aboutToAppear() {
    this.showLoading = true
    setInterval(() => {
      this.showLoading = false
    }, 3000)
  }

  build() {
    Row() {
      // 显示内容
      Column() {
        if (this.showLoading) {
          // 显示进度条
          // LoadingProgress()
          //   .width(40).height(40)
          HmLoading()
        } else {
          Text("Hello World")
        }
      }.width('100%')
    }.height('100%')
  }
}

// 自定义进度条组件
@Component
struct HmLoading {
  @State count:number = 0;
  aboutToAppear()  {
    setInterval(()=>{
      if(this.count===100){
        this.count = 0;
      }
      this.count++;
    },30)
  }

  build() {
    Progress({
      value:this.count,
      total:100,
      type:ProgressType.ScaleRing
    }).style({
      strokeWidth:6,
      scaleCount:20
    })
  }
}