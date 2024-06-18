import App from '@system.app'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Image($r('app.media.piggyDrink'))
          .width(250)
          .height(250)
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
          .backgroundColor('#FFF') // 背景色
          .type(InputType.PhoneNumber)
      }
      .width('100%')
    }
    .height('100%')
  }
}