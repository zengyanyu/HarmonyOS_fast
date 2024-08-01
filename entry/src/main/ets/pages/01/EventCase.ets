import { PromptAction } from '@ohos.arkui.UIContext';
import promptAction from '@ohos.promptAction';


@Entry
@Component
struct EventCase {

  @State public  account:String = "";;
  @State public   password:String ="";

  login(){
    // AlertDialog.show({message:"登录成功"})
    if(this.account==='admin'&&this.password==='123456'){
      promptAction.showToast({message:'登录成功'})
    }else{
      promptAction.showToast({message:'用户名或者密码错误'})
    }
  }

  getBtnEnable(){
    return this.account!==''&&this.password!=='';
  }

  build() {
    Row(){
      Column({space:20}){
        TextInput({
          placeholder:"请输入用户名"
        }).width('80%').height(40)
          .onChange((value)=>{
            // AlertDialog.show({message:value})
            this.account = value;
          })

        TextInput({
          placeholder:"请输入密码"
        })
          .width('80%')
          .height(40)
          .type(InputType.Password)
          .onChange((value)=>{
            this.password= value;
          })

          Button("登录").width('80%').
            onClick(()=>{
              this.login();
            }).enabled(this.getBtnEnable())

      }.width('100%')
    }.height('100%')

  }
}