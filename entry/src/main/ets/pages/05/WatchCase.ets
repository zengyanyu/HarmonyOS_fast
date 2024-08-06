import { promptAction } from '@kit.ArkUI';

//  只会监测 Object.keys(对象)所返回的数据结构

@Entry
@Component
struct WatchCase {
  @State
  @Watch("changeNum")
  num: number = 0;
  @State
  @Watch("updatePeople")
  p: People = {
    name: '老高',
    age: 20,
    sex: '老男人',
    address: {
      city: '北京'
    }
  }

  changeNum() {
    promptAction.showToast({ message: '值发生了变化' + this.num })
  }

  updatePeople(name: string) {
    promptAction.showToast({ message: '值发生了变化' + name })
  }

  build() {
    Column() {
      Text(this.num.toString())
      Text(JSON.stringify(this.p))
      Button("改年龄")
        .onClick(() => {
          this.p.age++
        })
      Button("改城市")
        .onClick(() => {
          // this.p.address.city = "测试"
          this.p.address = { city: '测试' }
        })
      Button("+")
        .onClick(() => {
          this.num++
        })
    }
    .height('100%')
    .width('100%')
  }
}

interface People {
  name: string
  age: number
  sex: string
  address: AddressObj
}

interface AddressObj {
  city: string
}