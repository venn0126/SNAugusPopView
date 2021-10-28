# SNAugusPopView

[![CI Status](https://app.travis-ci.com/travis-ci/travis-web.svg?branch=master)](https://app.travis-ci.com/travis-ci/travis-web)](https://travis-ci.org/venn0126/SNAugusPopView)
[![Version](https://img.shields.io/cocoapods/v/SNAugusPopView.svg?style=flat)](https://cocoapods.org/pods/SNAugusPopView)
[![License](https://img.shields.io/cocoapods/l/SNAugusPopView.svg?style=flat)](https://cocoapods.org/pods/SNAugusPopView)
[![Platform](https://img.shields.io/cocoapods/p/SNAugusPopView.svg?style=flat)](https://cocoapods.org/pods/SNAugusPopView)

## Features

* High performance: The library's dependencies all use system libraries and files , only a instance global.
* Automatic layout: The text label can be automatically layout depend to single or not.
* The alpha: Set the popView alpha is no effect text alpha.
* High custom: You can set any property that you want to.
* Lightweight:The library contains only 2 files,all file code total 800+ lines.
* Docs and unit test：100% docs coverage, 100% code coverage.

## Example

![](https://github.com/venn0126/iOS-Study/blob/master/Resource/SNAugusPopViewDemo.gif?raw=true)

* Example0

  ```objective-c
  self.allPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 700, 0, 0) text:@"请阅读并勾选以下协议勾选以下协议All" direction:SNAugusPopViewDirectionBottom singleLine:YES closeButtonName:@"close" leftImageName:@"left" gradient:YES];
                
  // self.allPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 750, 0, 0) text:@"请阅读并勾选以下协议勾选以下协议发发现新的炼金珠女呗冲啊擦法All" direction:SNAugusPopViewDirectionBottom singleLine:NO closeButtonName:@"close" leftImageName:@"left" gradient:YES];
                  
    [self.view addSubview:self.allPopView];
  
  
    self.allPopView.textFont = [UIFont systemFontOfSize:16];
    self.allPopView.gradientColors = @[(id)(UIColor.orangeColor.CGColor),(id)UIColor.redColor.CGColor];
    self.allPopView.gradientStartPoint = CGPointMake(1.0, 0.5);
    self.allPopView.gradientEndPoint = CGPointMake(0.0, 0.5);
    self.allPopView.gradientLocations = @[@0.5,@1.0];
  
    self.allPopView.closeButtonBackgroundColor = UIColor.blackColor;
    self.allPopView.leftImageBackgroundColor = UIColor.yellowColor;
  
    self.leftImagePopView.leftImageWidth = 30;
    self.leftImagePopView.leftImageHeight = 15;
    self.leftImagePopView.leftImageLabelPadding = 20;
    [self.allPopView show];
  ```

* Example1

  ```objective-c
  self.mulLinesPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(30, 250, 0, 0) text:@"袅袅炊烟，小小村落，路上一道辙，你用你那母亲的脉搏和我诉说，我的祖国和我像海和浪花一朵MulLines" direction:SNAugusPopViewDirectionBottom singleLine:NO gradient:NO];
  [self.view addSubview:self.mulLinesPopView];
  
  self.mulLinesPopView.mulLineWidth = 100.0;
  self.mulLinesPopView.arrowVerticalPadding = 30.0;
  self.mulLinesPopView.textAlignment = NSTextAlignmentLeft;
  self.mulLinesPopView.backgroundColor = UIColor.yellowColor;
  self.mulLinesPopView.borderWidth = 5.0;
  self.mulLinesPopView.borderColor = UIColor.greenColor;
  
  [self.mulLinesPopView show];
  ```

* Example2

  ```objective-c
  self.topPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(160, self.testView.frame.origin.y + 60, 0, 0) text:@"请阅读并勾选以下协议Top" direction:SNAugusPopViewDirectionTop gradient:NO];
  [self.view addSubview:self.topPopView];
  self.topPopView.delegate = self;
  self.topPopView.textFont = [UIFont systemFontOfSize:13];
  self.topPopView.arrowHorizontalPadding = 80;
  self.topPopView.textColor = UIColor.blueColor;
  
  [self.topPopView show];
  ```

* Example3

  ```objc
  self.bottomPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(100+60, 100-20, 0, 0) text:@"请阅读并勾选以下协议Bottom" direction:SNAugusPopViewDirectionBottom gradient:YES];
  self.bottomPopView.delegate = self;
  [self.view addSubview:self.bottomPopView];
  
  self.bottomPopView.arrowHorizontalPadding = 80;
  self.bottomPopView.textFont = [UIFont systemFontOfSize:16];
  self.bottomPopView.gradientColors = @[(id)(UIColor.orangeColor.CGColor),(id)UIColor.redColor.CGColor];
  self.bottomPopView.gradientStartPoint = CGPointMake(1.0, 0.5);
  self.bottomPopView.gradientEndPoint = CGPointMake(0.0, 0.5);
  self.bottomPopView.gradientLocations = @[@0.5,@1.0];
  
  [self.bottomPopView show];
  ```

* Example4

  ```objc
  self.leftPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(230, 100+25, 0, 0) text:@"请阅读并勾选以下协议Left" direction:SNAugusPopViewDirectionLeft gradient:NO];
  self.leftPopView.delegate = self;
  [self.view addSubview:self.leftPopView];
  
  self.leftPopView.textFont = [UIFont systemFontOfSize:10];
  self.leftPopView.arrowVerticalPadding = 5.0;
  self.leftPopView.aBackgroundRed = 0/255.0;
  self.leftPopView.aBackgroundGreen = 191/255.0;
  self.leftPopView.aBackgroundBlue = 255/255.0;
  
  [self.leftPopView show];
  ```

* Example5

  ```
  self.rightPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(160, 100+25, 0, 0) text:@"请阅读并勾选以下协议Right" direction:SNAugusPopViewDirectionRight gradient:NO];
  [self.view addSubview:self.rightPopView];
  self.rightPopView.delegate = self;
  self.rightPopView.textFont = [UIFont systemFontOfSize:10];
  self.rightPopView.arrowVerticalPadding = 5;
  self.rightPopView.textColor = UIColor.redColor;
  
  [self.rightPopView show];
  ```

* Example6

  ```objc
  self.closePopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 480, 0, 0) text:@"请阅读并勾选以下协议SingleClose" direction:SNAugusPopViewDirectionBottom singleLine:YES closeButtonName:@"Close" gradient:NO];
  [self.view addSubview:self.closePopView];
  [self.closePopView show];
  ```

* Example7

  ```objc
  self.leftImagePopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 580, 0, 0) text:@"请阅读并勾选以下协议LeftImage" direction:SNAugusPopViewDirectionBottom singleLine:YES leftImageName:@"left" gradient:NO];
  [self.view addSubview:self.leftImagePopView];
  
  self.leftImagePopView.leftImageWidth = 30;
  self.leftImagePopView.leftImageHeight = 15;
  
  [self.leftImagePopView show];
  ```

## Requirements

* `SNAugusPopView` works on iOS 9.0+. It depends on the following Apple Frameworks, which should already be include with most Xcode Templates:
  * Foundation.framework
  * UIKit.framewrok
  * objc/runtime.h

## Installation

* Static Library
  * You can also add `SNAugusPopView` as a static library to your project or workspace.
    * Download the latest code version or add repository as a git submodule to your git-tracked project.
    * Open your project in Xcode, then drag and drop `SNAugusPopView.xcodeproj` onto your project or workspace (use the "Product Navigator view").
    * Select your target and go to the Build phases tab. In the Link Binary With Libraries section select the add button. On the sheet find and add `SNAugusPopView.framework`. You might also need to add `SNAugusPopView` to the Target Dependencies list.
    * Include SNAugusPopView wherever you need it with `#import <SNAugusPopView/SNAugusPopView.h>`.
* Cocoapods
  * Add a pod entry for `SNAugusPopView` to your Podfile `pod 'SNAugusPopView', '~> 0.1.0'`
  * Install the pod(s) by running `pod install`
  * Include `SNAugusPopView` wherever you need it with `#import <SNAugusPopView.h>`
* Source files
  * Alternatively you can directly add the `SNAugusPopView.h` and `SNAugusPopView.m` source files to your project.
    * Download the latest code version or add repository as a git submodule to your git-tracked project.
    *  Open your project in Xcode, then drag and drop `SNAugusPopView.h` and `SNAugusPopView.m` onto your project (use the "Product Navigator view").Make sure to select Copy Items when asked if you extracted the code archive outside of your project.
    * Include `SNAugusPopView` wherever you need it with `#import <SNAugusPopView.h>`.

## Author

* Augus

## License

`SNAugusPopView` is available under the MIT license. See the [LICENSE](https://github.com/venn0126/SNAugusPopView/blob/main/LICENSE) for more info.



---

# 中文介绍

## 特性

* 高性能：该弹出框只依赖系统库和文件，全局只有一份。
* 自动布局：文本框可以根据外部的参数进行单行和多行的自动布局。
* 透明度：设置弹出框的透明度不会影响文本透明底，二者并行。
* 高度自定义：使用者可以任意设置你想设置的属性。
* 轻量级：该库只有头文件和实现文件，总代码800行左右。
* 文档和单元测试：文档覆盖率100%，代码覆盖率100%。

## 示例

* 例子0

  ```objc
  // 弹出框的初始化  
  self.allPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 700, 0, 0) text:@"请阅读并勾选以下协议勾选以下协议All" direction:SNAugusPopViewDirectionBottom singleLine:YES closeButtonName:@"close" leftImageName:@"left" gradient:YES];
                  
  // self.allPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 750, 0, 0) text:@"请阅读并勾选以下协议勾选以下协议发发现新的炼金珠女呗冲啊擦法All" direction:SNAugusPopViewDirectionBottom singleLine:NO closeButtonName:@"close" leftImageName:@"left" gradient:YES];
  
  // 添加弹出框到self.view上
  [self.view addSubview:self.allPopView];
  
  // 设置弹出框的文本字体大小
  self.allPopView.textFont = [UIFont systemFontOfSize:16];
  // 设置弹出框的渐变颜色数组
  self.allPopView.gradientColors = @[(id)(UIColor.orangeColor.CGColor),(id)UIColor.redColor.CGColor];
  // 设置弹出框的渐变起点
  self.allPopView.gradientStartPoint = CGPointMake(1.0, 0.5);
  // 设置弹出框的渐变终点
  self.allPopView.gradientEndPoint = CGPointMake(0.0, 0.5);
  // 设置弹出框的渐变影响范围
  self.allPopView.gradientLocations = @[@0.5,@1.0];
  // 设置关闭按钮的背景色
  self.allPopView.closeButtonBackgroundColor = UIColor.blackColor;
  // 设置左侧图片视图的背景色
  self.allPopView.leftImageBackgroundColor = UIColor.yellowColor;
  // 设置左侧图片视图的宽度
  self.leftImagePopView.leftImageWidth = 30;
  // 设置左侧图片视图的高度
  self.leftImagePopView.leftImageHeight = 15;
  // 设置左侧图片视图距离右侧视图的距离
  self.leftImagePopView.leftImageLabelPadding = 20;
  // 显示弹出框
  [self.allPopView show];
  ```

* 例子1

  ```objc
  self.mulLinesPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(30, 250, 0, 0) text:@"袅袅炊烟，小小村落，路上一道辙，你用你那母亲的脉搏和我诉说，我的祖国和我像海和浪花一朵MulLines" direction:SNAugusPopViewDirectionBottom singleLine:NO gradient:NO];
  [self.view addSubview:self.mulLinesPopView];
  
  self.mulLinesPopView.mulLineWidth = 100.0;
  self.mulLinesPopView.arrowVerticalPadding = 30.0;
  self.mulLinesPopView.textAlignment = NSTextAlignmentLeft;
  self.mulLinesPopView.backgroundColor = UIColor.yellowColor;
  self.mulLinesPopView.borderWidth = 5.0;
  self.mulLinesPopView.borderColor = UIColor.greenColor;
  
  [self.mulLinesPopView show];
  ```

* 例子2

  ```objc
  self.topPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(160, self.testView.frame.origin.y + 60, 0, 0) text:@"请阅读并勾选以下协议Top" direction:SNAugusPopViewDirectionTop gradient:NO];
  [self.view addSubview:self.topPopView];
  self.topPopView.delegate = self;
  self.topPopView.textFont = [UIFont systemFontOfSize:13];
  self.topPopView.arrowHorizontalPadding = 80;
  self.topPopView.textColor = UIColor.blueColor;
  
  [self.topPopView show];
  ```

* 例子3

  ```objc
  self.bottomPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(100+60, 100-20, 0, 0) text:@"请阅读并勾选以下协议Bottom" direction:SNAugusPopViewDirectionBottom gradient:YES];
  self.bottomPopView.delegate = self;
  [self.view addSubview:self.bottomPopView];
  
  self.bottomPopView.arrowHorizontalPadding = 80;
  self.bottomPopView.textFont = [UIFont systemFontOfSize:16];
  self.bottomPopView.gradientColors = @[(id)(UIColor.orangeColor.CGColor),(id)UIColor.redColor.CGColor];
  self.bottomPopView.gradientStartPoint = CGPointMake(1.0, 0.5);
  self.bottomPopView.gradientEndPoint = CGPointMake(0.0, 0.5);
  self.bottomPopView.gradientLocations = @[@0.5,@1.0];
  
  [self.bottomPopView show];
  ```

* 例子4

  ```objc
  self.leftPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(230, 100+25, 0, 0) text:@"请阅读并勾选以下协议Left" direction:SNAugusPopViewDirectionLeft gradient:NO];
  self.leftPopView.delegate = self;
  [self.view addSubview:self.leftPopView];
  
  self.leftPopView.textFont = [UIFont systemFontOfSize:10];
  self.leftPopView.arrowVerticalPadding = 5.0;
  self.leftPopView.aBackgroundRed = 0/255.0;
  self.leftPopView.aBackgroundGreen = 191/255.0;
  self.leftPopView.aBackgroundBlue = 255/255.0;
  
  [self.leftPopView show];
  ```

* 例子5

  ```objc
  self.rightPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(160, 100+25, 0, 0) text:@"请阅读并勾选以下协议Right" direction:SNAugusPopViewDirectionRight gradient:NO];
  [self.view addSubview:self.rightPopView];
  self.rightPopView.delegate = self;
  self.rightPopView.textFont = [UIFont systemFontOfSize:10];
  self.rightPopView.arrowVerticalPadding = 5;
  self.rightPopView.textColor = UIColor.redColor;
  
  [self.rightPopView show];
  ```

* 例子6

  ```objc
  self.closePopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 480, 0, 0) text:@"请阅读并勾选以下协议SingleClose" direction:SNAugusPopViewDirectionBottom singleLine:YES closeButtonName:@"Close" gradient:NO];
  [self.view addSubview:self.closePopView];
  [self.closePopView show];
  ```

* 例子7

  ```objc
  self.leftImagePopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 580, 0, 0) text:@"请阅读并勾选以下协议LeftImage" direction:SNAugusPopViewDirectionBottom singleLine:YES leftImageName:@"left" gradient:NO];
  [self.view addSubview:self.leftImagePopView];
  
  self.leftImagePopView.leftImageWidth = 30;
  self.leftImagePopView.leftImageHeight = 15;
  
  [self.leftImagePopView show];
  ```



## 依赖

* `SNAugusPopView`可以运行在iOS 9+的系统版本。它依赖以下的苹果框架，这些框架都已经内嵌在该库中
  * Foundation.framework
  * UIKit.framewrok
  * objc/runtime.h

## 安装

* 静态库
  * 你可以为你的目标工程或者项目过程添加`SNAugusPopView`以一个静态库的形式
    * 首先下载最新版本的代码或者添加代码仓库为你的代码跟踪作为跟踪子模块
    * 使用Xcode打开你的项目，然后拖拽`SNAugusPopView.xcodeproj`到你的工程或者项目工程
    * 选中你的目标工程，然后去`Build phases`选项卡，在` Link Binary With Libraries`组中点击添加按钮，在下拉列表中找到并添加`SNAugusPopView.framework`。你可能也需要添加`SNAugusPopView`到你的目的依赖列表中
* Cocoapods
  * 添加一个关于`SNAugusPopView`第三方库的请求在你的`Podfile`文件中，`SNAugusPopView', '~> 0.1.0`
  * 安装这个第三方库，使用pod的命令，`pod install`
  * 在你需要使用的`SNAugusPopView`的地方导入头文件，`#import <SNAugusPopView.h>`
* 源码文件
  * 与此同时，你也可以直接添加头文件和实现文件到你的工程中
    * 首先下载最新版本的代码或者添加代码仓库为你的代码跟踪作为跟踪子模块
    * 使用Xcode打开你的项目，然后拖拽`SNAugusPopView.h`和`SNAugusPopView.m`到你的工程或者项目工程，如果你在你的项目之外提取了代码文件，请确保在询问时选择复制项目
    * 在你使用该弹窗的地方导入头文件`#import <SNAugusPopView.h>`

## 作者

* Augus

## 许可证

`SNAugusPopView`是在MIT许可下提供的。更多信息请查阅[许可说明](https://github.com/venn0126/SNAugusPopView/blob/main/LICENSE)。



