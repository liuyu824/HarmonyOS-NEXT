import App from '@system.app'
@Entry
@Component
struct Index {
  @State message: string = 'HarmonyOS基础组件'
  @State imgWidth: number = 250
  @State imgHeight: number = 250

  build() {
    // 基础组件部分
    Column({space:20}) {

      Row(){
        Text(this.message)
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
      .padding({
        top:20,
        bottom:20,
        left:20,
        right:20
      })
      .justifyContent(FlexAlign.Center)

      Row(){
        Image($r('app.media.ic_home_car_default_n50'))
          .width(this.imgWidth)
          .objectFit(ImageFit.Contain)
          .interpolation(ImageInterpolation.High)
      }
      .height(300)
      .width('100%')
      .justifyContent(FlexAlign.Center)

      Row(){

        // 图片缩小按钮
        Button('small')
          .type(ButtonType.Capsule)
          .width(60)
          .height(30)
          .margin(10)
          .onClick(() => {
            if (this.imgHeight > 250 && this.imgWidth > 250) {
              this.imgWidth -= 10;
              this.imgHeight -= 10;
            }
          })

        // 图片放大按钮
        Button('large')
          .type(ButtonType.Capsule)
          .width(60)
          .height(30)
          .margin(10)
          .onClick(() => {
            if (this.imgWidth < 500 && this.imgHeight < 500) {
              this.imgWidth += 10;
              this.imgHeight += 10;
            }
          })

      }

      Row(){
        Text($r('app.string.width_label'))
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontStyle(FontStyle.Italic)
          .textAlign(TextAlign.Center)

        TextInput({placeholder:'请输入固定宽度'})
          .align(Alignment.Center)
          .width(200) // 宽度
          .backgroundColor('#36D') // 背景色
          .type(InputType.Number)
          .onChange(value =>{
            this.imgWidth = parseInt(value);
          })

      }

      Divider()
        .width('75%')

      Row(){
        Slider({
          min:250,   //最小值
          max:400, //最大值
          value:30,//当前值
          step:10, //滑动步长
          style:SliderStyle.InSet, //InSet
          direction:Axis.Horizontal,//Vertical
          reverse:false  //是否允许反向滑动
        }).width(250)
          .showTips(true) //是否展示当前value百分比
          .onChange(value => {
            this.imgWidth = value;
          })
          .margin({
            top:50,
            bottom:20,
            left:20,
            right:20
          })
      }

    }
    .height('100%')
    .width('100%')
  }
}