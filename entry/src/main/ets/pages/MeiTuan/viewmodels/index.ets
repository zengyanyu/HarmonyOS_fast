// 菜品数据
export class FoodItem {
  id: number = 0
  name: string = ""
  like_ratio_desc: string = ""
  food_tag_list: string[] = []
  price: number = 0
  picture: string = ""
  description: string = ""
  tag: string = ""
  month_saled: number = 0
  count: number = 0
}

// 分类数据
export class Category {
  tag: string = ""
  name: string = ""
  foods: FoodItem[] = []
}

// 操作类型
export enum OPERATE_TYPE {
  ADD,
  CUT
}