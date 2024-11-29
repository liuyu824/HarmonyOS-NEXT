import App from '@system.app'
// 定义成员变量
class Item {
  name : string
  image : ResourceStr
  price : Number

  constructor(name:string , image:ResourceStr , price:Number) {
    this.name = name
    this.image = image
    this.price = price
  }
}

@Entry
@Component
struct Index {
  @State message: string = 'HarmonyOS基础组件'
  @State name_n50ab: string = '我的阿尔法T'
  @State imgWidth: number = 250
  @State imgHeight: number = 250

  private items: Array<Item> = [
    new Item('Mate60', $r('app.media.mate60'),6999),
    new Item('MateBook', $r('app.media.matebookXPro'),13999),
    new Item('WatchGT4', $r('app.media.WatchGT4'),1438),
    new Item('FreeBuds3', $r('app.media.FreeBuds'),1499),
    new Item('Mate X5',$r('app.media.mateX5'),3799)
  ]

  build() {

    // 基础组件部分
    // Column({space:20}) {
    //
    //   Row(){
    //     Text(this.message)
    //       .fontSize(30)
    //       .fontWeight(FontWeight.Bold)
    //   }
    //   .width('100%')
    //   .padding({
    //     top:20,
    //     bottom:20,
    //     left:20,
    //     right:20
    //   })
    //   .justifyContent(FlexAlign.Center)
    //
    //   Row(){
    //     Image($r('app.media.ic_home_car_default_n50'))
    //       .width(this.imgWidth)
    //       .objectFit(ImageFit.Contain)
    //       .interpolation(ImageInterpolation.High)
    //   }
    //   .height(300)
    //   .width('100%')
    //   .justifyContent(FlexAlign.Center)
    //
    //   Row(){
    //
    //     // 图片缩小按钮
    //     Button('small')
    //       .type(ButtonType.Capsule)
    //       .width(60)
    //       .height(30)
    //       .margin(10)
    //       .onClick(() => {
    //         if (this.imgHeight > 250 && this.imgWidth > 250) {
    //           this.imgWidth -= 10;
    //           this.imgHeight -= 10;
    //         }
    //       })
    //
    //     // 图片放大按钮
    //     Button('large')
    //       .type(ButtonType.Capsule)
    //       .width(60)
    //       .height(30)
    //       .margin(10)
    //       .onClick(() => {
    //         if (this.imgWidth < 500 && this.imgHeight < 500) {
    //           this.imgWidth += 10;
    //           this.imgHeight += 10;
    //         }
    //       })
    //
    //   }
    //
    //   Row(){
    //     Text($r('app.string.width_label'))
    //       .fontSize(20)
    //       .fontWeight(FontWeight.Bold)
    //       .fontStyle(FontStyle.Italic)
    //       .textAlign(TextAlign.Center)
    //
    //     TextInput({placeholder:'请输入固定宽度'})
    //       .align(Alignment.Center)
    //       .width(200) // 宽度
    //       .backgroundColor('#36D') // 背景色
    //       .type(InputType.Number)
    //       .onChange(value =>{
    //         this.imgWidth = parseInt(value);
    //       })
    //
    //   }
    //
    //   Divider()
    //     .width('75%')
    //
    //   Row(){
    //     Slider({
    //       min:250,   //最小值
    //       max:400, //最大值
    //       value:30,//当前值
    //       step:10, //滑动步长
    //       style:SliderStyle.InSet, //InSet
    //       direction:Axis.Horizontal,//Vertical
    //       reverse:false  //是否允许反向滑动
    //     }).width(250)
    //       .showTips(true) //是否展示当前value百分比
    //       .onChange(value => {
    //         this.imgWidth = value;
    //       })
    //       .margin({
    //         top:50,
    //         bottom:20,
    //         left:20,
    //         right:20
    //       })
    //   }
    //
    // }
    // .height('100%')
    // .width('100%')

    Column(){

      Row(){
        Text(this.name_n50ab)
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({
            left:10
          })

        Image($r('app.media.ic_navigation_home_more'))
          .width(25)

        Image($r('app.media.ic_navigation_home_scan'))
          .width(25)
          .margin({
            left:200
          })
      }
      .width('100%')
      .height('8%')

      Row(){
        Image($r('app.media.ic_home_car_default_n50'))
          .width('100%')

      }
      .justifyContent(FlexAlign.Center)
      .width('100%')

      Row(){
        Button(){
          Row(){
            Image($r('app.media.ic_mainview_location'))
              .width(20)
              .height(20)
              .margin({
                left: 0
              })

            Text('｜')
              .fontSize(12)
              .fontColor('#303030')

            Text('未获取到车辆位置...')
              .fontSize(12)
              .fontColor('#303030')
              .margin({
                left: 5,
                right: 12
              })
          }
          .alignItems(VerticalAlign.Center)
        }
        .borderRadius(8)
        .type(ButtonType.Capsule)
        .backgroundColor('#1A6070FF')
        .width('50%')
        .height(30)
      }

      Row(){
        Column(){
          Text('自动接闭锁功能升级')
            .fontSize(14)
            .fontColor('#303030')
            .fontWeight(FontWeight.Bold)
            .margin({
              left:10
            })
          Text('无需启动极狐App，即可实现自动接闭锁功能')
            .fontSize(12)
            .fontColor('#909090')
            .fontWeight(FontWeight.Bold)
            .margin({
              left:10
            })
        }
        .alignItems(HorizontalAlign.Start)
      }
      .height(60)
      .width('85%')
      .borderRadius(8)
      .backgroundColor('#1A6070FF')
      .margin(20)

      List({space:8}){
        ForEach(
          this.items,
          (item:Item) => { //页面组件生成函数
            ListItem(){
              Column(){
                Image(item.image)
                  .height(30)
                Text(item.name)
                  .fontSize(10)
                Text('¥'+item.price)
                  .fontSize(10)
                  .fontColor('#F36')
              }
            }
          }
        )
      }
      .width('100%')
      .listDirection(Axis.Horizontal)
      .layoutWeight(1)

      Row(){
        ForEach(
          this.items,
          (item:Item) => { //页面组件生成函数
            Column(){
              Image(item.image)
                .height(30)
              Text(item.name)
                .fontSize(10)
              Text('¥'+item.price)
                .fontSize(10)
                .fontColor('#F36')
            }
            .layoutWeight(1)
          }
        )
      }
      .width('90%')
      .height(70)
      .borderRadius(8)
      .backgroundColor('#1A6070FF')
      .margin({
        bottom:20
      })

      Row(){
        Column(){
          Image($r('app.media.ic_door_lock'))
            .height(30)
          Text('车锁')
            .fontSize(13)
        }
        .width('20%')
        .height(50)

        Column(){
          Image($r('app.media.ic_window_off'))
            .height(30)
          Text('车窗')
            .fontSize(13)
        }
        .width('20%')
        .height(50)

        Column(){
          Image($r('app.media.ic_findcar_off'))
            .height(30)
          Text('寻车')
            .fontSize(13)
        }
        .width('20%')
        .height(50)

        Column(){
          Image($r('app.media.ic_backdoor_off'))
            .height(30)
          Text('尾门')
            .fontSize(13)
        }
        .width('20%')
        .height(50)

        Column(){
          Image($r('app.media.ic_charge_lock'))
            .height(30)
          Text('充电枪锁')
            .fontSize(13)
        }
        .width('20%')
        .height(50)

      }
      .width('90%')
      .height(65)
      .borderRadius(8)
      .backgroundColor('#1A6070FF')

      Row(){
        Column(){

        }
        .width('68%')
        .height(65)
        .borderRadius(8)
        .backgroundColor('#1A6070FF')
        .margin({
          right:20
        })

        Column(){
          Image($r('app.media.ic_btkey_new'))
            .height(40)
            .margin({
              bottom:7
            })
          Text('创建蓝牙钥匙')
            .fontSize(12)
        }
        .width('25%')
        .height(65)
        .borderRadius(8)
        .backgroundColor('#1A6070FF')

      }
      .width('90%')
      .height(65)
      .margin({
        top:20
      })
    }
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.ic_mainView_bg'))
    .backgroundImageSize(ImageSize.Contain)
  }
}