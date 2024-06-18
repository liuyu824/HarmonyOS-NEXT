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
      }
      .width('100%')
    }
    .height('100%')
  }
}