import { HmCommentItem, HmReplyInput, HmVarBar } from './components'
import { ReplyItemModel } from './models'

@Entry
@Component
struct ZhihuDemo {
  @State
  commentList: ReplyItemModel[] = [
    new ReplyItemModel({
      id: 1,
      avatar: 'https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63',
      author: '偏执狂-妄想家',
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: '11-30',
      area: '海南',
      likeNum: 34,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 2,
      avatar: 'https://pic1.zhimg.com/v2-5a3f5190369ae59c12bee33abfe0c5cc_xl.jpg?source=32738c0c',
      author: 'William',
      content: '当年希腊可是把1：0发挥到极致了',
      time: '11-29',
      area: '北京',
      likeNum: 58,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 3,
      avatar: 'https://picx.zhimg.com/v2-e6f4605c16e4378572a96dad7eaaf2b0_l.jpg?source=06d4cd63',
      author: 'Andy Garcia',
      content: '欧洲杯其实16队球队打正赛已经差不多，24队打正赛意味着正赛阶段在小组赛一样有弱队。',
      time: '11-28',
      area: '上海',
      likeNum: 10,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 4,
      avatar: 'https://picx.zhimg.com/v2-53e7cf84228e26f419d924c2bf8d5d70_l.jpg?source=06d4cd63',
      author: '正宗好鱼头',
      content: '确实眼红啊，亚洲就没这种球队，让中国队刷',
      time: '11-27',
      area: '香港',
      likeNum: 139,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 5,
      avatar: 'https://pic1.zhimg.com/v2-eeddfaae049df2a407ff37540894c8ce_l.jpg?source=06d4cd63',
      author: '柱子哥',
      content: '我是支持扩大的，亚洲杯欧洲杯扩到32队，世界杯扩到64队才是好的，世界上有超过200支队伍，欧洲区55支队伍，亚洲区47支队伍，即使如此也就六成出现率',
      time: '11-27',
      area: '旧金山',
      likeNum: 29,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 6,
      avatar: 'https://picx.zhimg.com/v2-fab3da929232ae911e92bf8137d11f3a_l.jpg?source=06d4cd63',
      author: '飞轩逸',
      content: '禁止欧洲杯扩军之前，应该先禁止世界杯扩军，或者至少把亚洲名额一半给欧洲。',
      time: '11-26',
      area: '里约',
      likeNum: 100,
      likeFlag: false
    })
  ]
  @State
  currentComment: ReplyItemModel = new ReplyItemModel({
    id: 999,
    avatar: 'https://ww4.sinaimg.cn/mw690/dad5bf5dgy1hs885w13uwj20u016548a.jpg',
    author: '满山猴子我腚最红',
    time: '08-05',
    area: '北京',
    likeNum: 100,
    content: '巴黎奥运会男子游泳潘展乐同学突破欧美限制夺得100米自由泳金牌，并打破世界记录',
    likeFlag: false
  })
  scroller: Scroller = new Scroller()

  // 处理点赞问题
  changeLike(item: ReplyItemModel, index: number) {
    // 点赞或者取消点赞
    if (item.likeFlag) {
      item.likeNum--;
    } else {
      item.likeNum++;
    }
    item.likeFlag = !item.likeFlag;
    // 修改第一层数据
    this.commentList[index] = new ReplyItemModel(item);
  }

  // 发布评论
  addComment(content: string) {
    // unshift：表示放在List集合最前面
    // push：表示添加到集合最后
    this.commentList.unshift(new ReplyItemModel({
      id: 999,
      avatar: 'https://ww4.sinaimg.cn/mw690/dad5bf5dgy1hs885w13uwj20u016548a.jpg',
      author: '满山猴子我腚最红',
      time: '08-05',
      area: '北京',
      likeNum: 0,
      content,
      likeFlag: false
    }))
    // 滚动条滚到最上面
    this.scroller.scrollEdge(Edge.Top)
  }

  build() {
    // 知乎的主页面
    Column() {
      HmVarBar({ title: '评论回复' }) // 创建HmNavBar
      HmCommentItem({
        item: this.currentComment,
        changeLike: () => {
          if (this.currentComment.likeFlag) {
            this.currentComment.likeNum--
          } else {
            this.currentComment.likeNum++
          }
          this.currentComment.likeFlag = !this.currentComment.likeFlag
        }
      })
        .margin({
          top: 20,
          bottom: 20
        })
      Divider()
        .strokeWidth(10)
      Row() {
        Text("评论数" + this.commentList.length)
      }.width('100%')
      .height(50)
      .padding({
        left: 20
      })
      .border({
        color: '#ccc',
        width: {
          bottom: 1
        }
      })

      // 评论区内容
      List() {
        ForEach(this.commentList, (item: ReplyItemModel, index: number) => {
          ListItem() {
            HmCommentItem({
              item: item,
              changeLike: () => {
                // 处理点赞的问题
                this.changeLike(item, index);
              }
            })
              .margin({
                bottom: 20
              })
          }
        })
      }
      .padding({
        top: 20
      })
      .layoutWeight(1) // 占满剩余空间

      // 评论区
      HmReplyInput({
        publishComment: (content: string) => {
          // 发布评论
          this.addComment(content)
        }
      });
    }
    .height('100%')
    .width('100%')
  }
}