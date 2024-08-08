// http
import { http } from '@kit.NetworkKit'
import { Category } from '../viewmodels'

// import axios, { AxiosResponse } from '@ohos/axios'

export const getAllDataByHttp = async () => {
  const req = http.createHttp()
  const res = await req.request("https://zhousg.atomgit.net/harmonyos-next/takeaway.json")
  return JSON.parse(res.result as string) as Category[]
}

export const getAllDataByHttpThen = async (callback: (res: Category[]) => void) => {
  const req = http.createHttp()
  req.request("https://zhousg.atomgit.net/harmonyos-next/takeaway.json").then(res => {
    const result = JSON.parse(res.result as string) as Category[]
    callback(result)
  })
  // return JSON.parse(res.result as string) as Category[]
}

export const getAllDataByHttpThen2 = async () => {
  const req = http.createHttp()
  return new Promise<Category[]>((resolve, reject) => {
    req.request("https://zhousg.atomgit.net/harmonyos-next/takeaway.json").then(res => {
      const result = JSON.parse(res.result as string) as Category[]
      resolve(result)
    })
  })

  // return JSON.parse(res.result as string) as Category[]
}

// export const getAllDataByAxios = async () => {
//   const res =
//     await axios.get<string, AxiosResponse<Category[], string>>("https://zhousg.atomgit.net/harmonyos-next/takeaway.json")
//   return res.data
// }