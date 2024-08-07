export class FastPeople {
  name: string = ''
  age: number = 0
}

// 共享数据
let obj: Record<string, FastPeople> = {
  "user": { name: "章三", age: 20 }
}

// 得到一个实际对象
const tokenObj = new LocalStorage(obj);

export { tokenObj }