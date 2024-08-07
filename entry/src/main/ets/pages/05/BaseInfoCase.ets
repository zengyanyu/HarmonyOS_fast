import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct BaseInfoCase {
  @State message: string = 'Hello World';
  @State
  showInfo: boolean = true

  @Builder
  getContent() {
    Column({ space: 20 }) {
      Row() {
        Text("基本信息")
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        Image($r('app.media.add'))
          .width(20)
          .aspectRatio(1)
          .onClick(() => {
            this.showInfo = !this.showInfo;
          })
      }
      .width('100%')
      .height(40)
      .backgroundColor(Color.White)
      .justifyContent(FlexAlign.SpaceBetween)

      // if 条件渲染 渲染基本信息下的内容
      if (this.showInfo) {
        Column() {
          Row({ space: 10 }) {
            Row() {
              Text('起').fontColor(Color.White)
                .fontSize(12)
                .width('100%').textAlign(TextAlign.Center)
            }.width(20).aspectRatio(1)
            .borderRadius(10).backgroundColor(Color.Black)

            Text("厦门市集美区锦英南二里").layoutWeight(1)
              .fontSize(14)
              .fontColor('#9f9f9f')
          }.width('100%')
          // .backgroundColor(Color.Green)
          .justifyContent(FlexAlign.SpaceBetween)

          Row() {
          }
          .border({
            color: '#9f9f9f',
            width: {
              left: 1
            }
          })
          // 偏移
          .translate({
            x: 10,
            // y: -2
          })
          .borderStyle(BorderStyle.Dashed)
          .width('100%')
          .height(20)


          Row({ space: 10 }) {
            Row() {
              Text('止').fontColor(Color.White)
                .fontSize(12)
                .width('100%').textAlign(TextAlign.Center)
            }.width(20).aspectRatio(1)
            .borderRadius(10).backgroundColor(Color.Red)

            Text("厦门市集美区锦英南二里").layoutWeight(1)
              .fontSize(14)
              .fontColor('#9f9f9f')
          }.width('100%')
          // .backgroundColor(Color.Green)
          .justifyContent(FlexAlign.SpaceBetween)

          Divider().strokeWidth(1)
            .margin({
              top: 20,
              bottom: 20
            })

          // 调用本this中的函数
          this.getCardItem('任务编号', '111112222233333');
          this.getCardItem('联系人', '张三');
          this.getCardItemIcon('联系电话', '19859732425', $r('sys.media.ohos_ic_public_phone'));
          this.getCardItem('提货时间', '2024-08-06 20:30:08');
          this.getCardItem('预计送达时间', '2024-08-06 20:30:08');

          // 调用子组件
          // CardItem1({
          //   leftTitle: 'dddd',
          //   rightVal: 'xxxx'
          // })
        }
      }

      // Text("xxxxxxxxxxxxxxxxxxxxxxx")

      // 缩放
      // .scale({
      //   x: this.showInfo ? 1 : 0,
      //   y: this.showInfo ? 1 : 0
      // })
    }
    .width('100%')
    .backgroundColor(Color.White)
    .padding(20)
  }

  build() {
    Column() {
      this.getContent()
    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Gray)
  }

  @Builder
  getCardItem(leftTitle: string, rightValue: string) {
    Row() {
      Text(leftTitle)// .fontSize(16)
        .fontColor('#c6c6c6')

      Text(rightValue)
        .fontSize(14)
        .fontColor('#707070')
    }.width('100%')
    .height(30)
    .justifyContent(FlexAlign.SpaceBetween)
  }

  @Builder
  getCardItemIcon(leftTitle: string, rightValue: string, iconImage: ResourceStr) {
    Row() {
      Text(leftTitle)
        .fontColor('#c6c6c6')

      Row() {
        Text(rightValue)
          .fontSize(14)
          .fontColor('#707070')
        Image(iconImage)
          .width(16)
          .aspectRatio(1)
          .borderRadius(5)
          .fillColor(Color.Red)
          .syncLoad(true) // 设置为同步加载，在使用的时候，图片不会闪
      }
    }.width('100%')
    .height(30)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}

// 卡片项
@Component
struct CardItem1 {
  // 使用Link修饰符不能进行初始化
  // @Link
  @State
  leftTitle: string = ''
  @State
  rightVal: string = ''

  build() {
    Row() {
      Text(this.leftTitle)
        .fontSize(20)
        .fontColor('#c6c6c6')

      Text(this.rightVal)
        .fontSize(20)
        .fontColor('#707070')
    }.width('100%')
    .height(40)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}