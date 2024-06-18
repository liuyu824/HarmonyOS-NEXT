# Harmony-OS Study

## 05. ArkUI组件 - Image组件

Image：图片显示组件

### 1. 声明Image组件并设置图片源

```java
Image(src:string | PixelMap | Resource)
```

- string格式，通常用来加载网络图片

  - 需要申请网络访问权限：ohos.permission.INTERNET

  ```java
  # module.json5文件中配置 
  {
    "module": {
      "requestPermissions": [
        {
          "name": "ohos.permission.INTERNET",
        }
  ]}}  
  ```

  ```java
  # 网络请求情况Image('http://gips1.baidu.com/it/u=1971954603,2916157720&fm=3028&app=3028&f=JPEG&fmt=auto?w=1920&h=2560')
            .width(250)
            .height(250)
            .interpolation(ImageInterpolation.High)
  ```

- PixelMap，通常用来加载像素图，常用在图片编辑中

  ```java
  # 不常用
  Image(pixelMapObject)
  ```

- Resource格式，加载本地图片，推荐使用

  ```java
  Image($r('app.media.mate60'))
  Image($rawfile('mate60.png'))
  ```

### 2. 添加图片属性

```java
Image($r('app.media.icon'))
  .width(100) //宽度
  .height(120) //高度
  .borderRadius(10) //边框圆角
  .interpolation(ImageInterpolation.High) //图片插值
```

## 06. ArkUI组件 - Text组件

### 1. 声明Text组件并设置文本内容

```java
Text(content?:string|Resource)
# string格式，直接填写文本内容
Text('图片宽度')
# Resource格式，读取本地资源文件  
Text($r('app.string.width_label'))  
```

#### HarmonyOS - Application - Structure

<img src='HarmonyOS_structure.png'></img>

### 2. 添加文本属性
