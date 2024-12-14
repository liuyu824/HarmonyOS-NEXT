import App from '@system.app'
import { router } from '@kit.ArkUI'

@Entry
@Component
struct BatcIndex {

  @State chooseVin: string = "请选择VIN码"
  @State text: string = "下拉选择VIN码"
  @State index: number = 2
  @State space: number = 8
  @State arrowPosition: ArrowPosition = ArrowPosition.END

  build() {
    Column() {
      Row() {
        Text('当前vin：')
        Select([{ value: 'LNBMC5GK6RD000001', icon: $r("app.media.n51ab_nec") },
          { value: 'LNBSC1AK0RR034781', icon: $r("app.media.n51ab_nec") },
          { value: 'LNBE12C66TB999999', icon: $r("app.media.n51ab_nec") },
          { value: 'LNBSC1ZK8RR034709', icon: $r("app.media.n51ab_nec") },
          { value: 'LNBSC1ZKXRR034715', icon: $r("app.media.n51ab_nec") },
          { value: 'LNBSC1ZK4RR034674', icon: $r("app.media.n51ab_nec") },
          { value: 'LNBRC37TB73728660', icon: $r("app.media.n51ab_nec") },
          { value: 'LNBRC37TB73728606', icon: $r("app.media.n51ab_nec") },
          { value: 'ccc', icon: $r("app.media.n51ab_nec") },
          { value: 'ccc', icon: $r("app.media.n51ab_nec") },
          { value: 'ccc', icon: $r("app.media.n51ab_nec") },
          { value: 'ccc', icon: $r("app.media.n51ab_nec") },
          { value: 'ddd', icon: $r("app.media.n51ab_nec") }])
          .selected(this.index)
          .value(this.text)
          .font({ size: 16, weight: 500 })
          .fontColor('#182431')
          .selectedOptionFont({ size: 16, weight: 400 })
          .optionFont({ size: 16, weight: 400 })
          .space(this.space)
          .arrowPosition(this.arrowPosition)
          .menuAlign(MenuAlignType.START, {dx:0, dy:0})
          .optionWidth(200)
          .optionHeight(300)
          .onSelect((index:number, text?: string | undefined)=>{
            console.info('Select:' + index)
            this.index = index;
            if(text){
              this.text = text;
            }
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.End)

      Row(){
        Image($r('app.media.img_logo'))
          .width('100%')
      }
      .justifyContent(FlexAlign.Center)
      .alignItems(VerticalAlign.Center)
      .height('20%')
      .width('70%')

      Text(this.chooseVin)
        .width('80%')

      Divider()
        .height(0.5) // 设置线的高度
        .backgroundColor(Color.Gray) // 设置线的颜色
        .margin({ top: 20, bottom: 20 })
        .width('80%')

      Text(this.chooseVin)
        .width('80%')

      Divider()
        .height(0.5) // 设置线的高度
        .backgroundColor(Color.Gray) // 设置线的颜色
        .margin({ top: 20, bottom: 20 })
        .width('80%')

      Text(this.chooseVin)
        .width('80%')

      Divider()
        .height(0.5) // 设置线的高度
        .backgroundColor(Color.Gray) // 设置线的颜色
        .margin({ top: 20, bottom: 20 })
        .width('80%')

      Text(this.chooseVin)
        .width('80%')

      Divider()
        .height(0.5) // 设置线的高度
        .backgroundColor(Color.Gray) // 设置线的颜色
        .margin({ top: 20, bottom: 20 })
        .width('80%')

      Row() {
        Button() {
          Text('登录')
            .fontColor($r('sys.color.white'))
            .fontWeight(FontWeight.Bold)
        }
        .width('80%')
        .height('4%')
        .borderRadius(5)
        .type(ButtonType.Normal)
        .onClick(() => router.pushUrl({ url: 'pages/AF_rmtCtrlPage' }))
      }

    }
  }
}