import App from '@system.app'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State imgWidth: number = 250
  @State imgHeight: number = 250

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Image($r('app.media.ic_home_car_default_n50'))
          .width(this.imgWidth)
          .height(this.imgHeight)
          .objectFit(ImageFit.Contain)
          .interpolation(ImageInterpolation.High)

        Text($r('app.string.width_label'))
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontStyle(FontStyle.Italic)
          .width('100%')
          .textAlign(TextAlign.Center)

        TextInput({placeholder:'请输入账号或手机号'})
          .align(Alignment.Center)
          .width(200) // 宽度
          .height(50) // 高度
          .backgroundColor('#36D') // 背景色
          .type(InputType.Number)
          .onChange(value =>{
            this.imgHeight = parseInt(value);
            this.imgWidth = parseInt(value);
          })

        Button('Click Me to make img large')
          .type(ButtonType.Capsule)
          .width(200)
          .height(30)
          .margin(10)
          .onClick(() => {
            if (this.imgWidth < 500 && this.imgHeight < 500) {
              this.imgWidth += 10;
              this.imgHeight += 10;
            }
          })

        Button('Click Me to make img small')
          .type(ButtonType.Capsule)
          .width(200)
          .height(30)
          .margin(10)
          .onClick(() => {
            if (this.imgHeight > 250 && this.imgWidth > 250) {
              this.imgWidth -= 10;
              this.imgHeight -= 10;
            }
          })

        Slider({
          min:250,   //最小值
          max:500, //最大值
          value:30,//当前值
          step:10, //滑动步长
          style:SliderStyle.InSet, //InSet
          direction:Axis.Horizontal,//Vertical
          reverse:false  //是否允许反向滑动
        }).width(250)
          .showTips(true) //是否展示当前value百分比
          .onChange(value=>{
            this.imgHeight = value;
            this.imgWidth = value;
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}