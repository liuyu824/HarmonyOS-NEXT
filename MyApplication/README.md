# Be12HarmonyOSProject

## 项目概述

`BE12HarmonyOSProject` 是一个基于 HarmonyOS 的应用程序项目，旨在提供远程控制汽车的功能。该项目使用 ArkUI 和 ArkTS 编写，确保了高性能和良好的用户体验。

## 目录结构

. ├── AppScope --项目包名、应用名、icon等信息
  ├── common --公共组建、工具类等
  ├── entry --项目入口
  │ ├── main
  │ │ ├── ets --页面及逻辑
  │ │ │ ├── ability
  │ │ │ └── pages
  │ │ ├── resources --资源
  │ │ └── module.json5
  │ └── test
  ├── features --项目模块
  │ ├── airCondition    --空调模块
  │ ├── bluetooth       --蓝牙模块
  │ ├── carLocation     --定位模块
  │ ├── carStatus       --车辆状态模块
  │ ├── chargeCenter    --充电中心模块
  │ ├── loginPage       --demo登录模块
  │ ├── otaUpdate       --OTA模块
  │ └── shareCenter     --授权模块
  ├── build-profile.json5
  ├── package.json
  ├── README.md
  └── LICENSE

  ## 安装指南

  ### 前提条件

  - HarmonyOS DevEco Studio (最新版本)
  - Node.js (v14.17.0 或更高版本)
  - npm (v6.14.13 或更高版本)

  ### 安装步骤

  1. **克隆项目仓库**:
  sh
  git clone https://github.com/yourusername/Be12HarmonyOSProject.git

