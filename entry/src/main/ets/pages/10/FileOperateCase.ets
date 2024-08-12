import { photoAccessHelper } from '@kit.MediaLibraryKit';
import { fileIo } from '@kit.CoreFileKit';
import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct FileOperateCase {
  @State
  list: string[] = []

  saveLocal(list: string[]) {
    let arr: string[] = []
    list.forEach(item => {
      // item是相册的地址
      // 读取对应地址所对应的文件对象
      const file = fileIo.openSync(item, fileIo.OpenMode.READ_ONLY) // 我们对相册只能只读
      // 目前文件的路径-生成
      let destPath = getContext().filesDir + "/" + file.name
      fileIo.copyFileSync(file.fd, destPath)
      fileIo.closeSync(file) // 关闭文件释放内存
      arr.push(destPath)
    })
    this.list = arr;
    promptAction.showToast({ message: '保存到沙箱成功' })
  }

  delPath(url: string) {
    // 删除文件
    fileIo.unlink(url)
  }

  build() {
    Column() {
      Button("选择照片")
        .onClick(async () => {
          let photoPicker = new photoAccessHelper.PhotoViewPicker();
          const result = await photoPicker.select({
            maxSelectNumber: 3
          })
          this.saveLocal(result.photoUris)
        })

      Grid() {
        ForEach(this.list, (url: string) => {
          GridItem() {
            Image("file://" + url)
              .width("100%")
              .aspectRatio(1)
          }
          .onClick(() => {
            // 更新数组
            this.list = this.list.filter(item => item !== url)
            this.delPath(url) // 删除沙箱文件
          })
        })
      }
      .columnsTemplate('1fr 1fr')
      .rowsGap(10)
      .columnsGap(10)
      .padding(20)
    }
    .height('100%')
    .width('100%')
  }
}