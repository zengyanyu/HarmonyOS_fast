import { router } from '@kit.ArkUI';

@Entry
@Component
struct PageA {
  build() {
    Grid() {
      GridItem() {
        Column({ space: 10 }) {
          Image($r("app.media.app_icon"))
            .width("100%")
            .aspectRatio(1)
            .sharedTransition("zyy", {
              duration: 500
            })

          Text("拼多多信息")
        }
        .onClick(() => {
          router.pushUrl({
            url: 'pages/10/PageB'
          })
        })
      }

      GridItem() {
        Column({ space: 10 }) {
          Image($r("app.media.app_icon"))
            .width("100%")
            .aspectRatio(1)
            .sharedTransition("zyy", {
              duration: 500
            })

          Text("拼多多信息")
        }
        .onClick(() => {
          router.pushUrl({
            url: 'pages/10/PageB'
          })
        })
      }

      GridItem() {
        Column({ space: 10 }) {
          Image($r("app.media.app_icon"))
            .width("100%")
            .aspectRatio(1)
            .sharedTransition("zyy", {
              duration: 500
            })

          Text("拼多多信息")
        }
        .onClick(() => {
          router.pushUrl({
            url: 'pages/10/PageB'
          })
        })
      }

      GridItem() {
        Column({ space: 10 }) {
          Image($r("app.media.app_icon"))
            .width("100%")
            .aspectRatio(1)
            .sharedTransition("zyy", {
              duration: 500
            })

          Text("拼多多信息")
        }
        .onClick(() => {
          router.pushUrl({
            url: 'pages/10/PageB'
          })
        })
      }

      GridItem() {
        Column({ space: 10 }) {
          Image($r("app.media.app_icon"))
            .width("100%")
            .aspectRatio(1)
            .sharedTransition("zyy", {
              duration: 500
            })

          Text("拼多多信息")
        }
        .onClick(() => {
          router.pushUrl({
            url: 'pages/10/PageB'
          })
        })
      }

      GridItem() {
        Column({ space: 10 }) {
          Image($r("app.media.app_icon"))
            .width("100%")
            .aspectRatio(1)
            .sharedTransition("zyy", {
              duration: 500
            })

          Text("拼多多信息")
        }
        .onClick(() => {
          router.pushUrl({
            url: 'pages/10/PageB'
          })
        })
      }

      GridItem() {
        Column({ space: 10 }) {
          Image($r("app.media.app_icon"))
            .width("100%")
            .aspectRatio(1)
            .sharedTransition("zyy", {
              duration: 500
            })

          Text("拼多多信息")
        }
        .onClick(() => {
          router.pushUrl({
            url: 'pages/10/PageB'
          })
        })
      }
    }
    .columnsTemplate('1fr 1fr')
    .rowsGap(20)
    .columnsGap(20)
    .height('100%')
    .width('100%')
  }
}