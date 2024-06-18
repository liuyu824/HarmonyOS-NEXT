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

        Image('http://gips1.baidu.com/it/u=1971954603,2916157720&fm=3028&app=3028&f=JPEG&fmt=auto?w=1920&h=2560')
          .width(250)
          .height(250)
          .interpolation(ImageInterpolation.High)

      }
      .width('100%')

    }
    .height('50%')
  }
}