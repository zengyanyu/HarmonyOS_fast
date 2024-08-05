


interface IPerson{
  name:string
  age:number
  address:IAddress
}

interface IAddress{
  province:string
  city:string
  area:string
}
export class IPersonModel implements IPerson {
  name: string = ''
  age: number = 0
  address: IAddress = new IAddressModel({} as IAddress)

  constructor(model: IPerson) {
    this.name = model.name
    this.age = model.age
    this.address = model.address
  }
}
export class IAddressModel implements IAddress {
  province: string = ''
  city: string = ''
  area: string = ''

  constructor(model: IAddress) {
    this.province = model.province
    this.city = model.city
    this.area = model.area
  }
}
