import { request } from '@kit.BasicServicesKit'
import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct FileDownloadPage {
  baiduUrl: string = "http://gips2.baidu.com/it/u=3093819921,829322739&fm=3028&app=3028&f=JPEG&fmt=auto?w=1024&h=1024"
  @State
  path: string = ""

  // 文件下载
  async fileDownload() {
    let p = getContext().filesDir + "/girl.png"
    const task = await request.downloadFile(getContext(), {
      url: this.baiduUrl,
      filePath: p
    })
    task.on("progress", () => {

    })
    task.on("complete", () => {
      this.path = p // 完成下载后赋值 => 更新UI
      promptAction.showToast({ message: '下载完成' })
    })
  }

  build() {
    Column() {
      Button("文件下载")
        .onClick(() => {
          this.fileDownload();
        })

      if (this.path) {
        Image("file://" + this.path)
          .width("100%")
          .aspectRatio(1)
      }
    }.justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
  }
}