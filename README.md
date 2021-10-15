# SNAugusPopView

[![CI Status](https://img.shields.io/travis/venn0126/SNAugusPopView.svg?style=flat)](https://travis-ci.org/venn0126/SNAugusPopView)
[![Version](https://img.shields.io/cocoapods/v/SNAugusPopView.svg?style=flat)](https://cocoapods.org/pods/SNAugusPopView)
[![License](https://img.shields.io/cocoapods/l/SNAugusPopView.svg?style=flat)](https://cocoapods.org/pods/SNAugusPopView)
[![Platform](https://img.shields.io/cocoapods/p/SNAugusPopView.svg?style=flat)](https://cocoapods.org/pods/SNAugusPopView)

## Example

![](https://github.com/venn0126/iOS-Study/blob/master/Resource/SNAugusPopViewExample.gif?raw=true)

* Example0

  * ```objective-c
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

  * ```objective-c
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

  * ```objective-c
    self.topPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(160, self.testView.frame.origin.y + 60, 0, 0) text:@"请阅读并勾选以下协议Top" direction:SNAugusPopViewDirectionTop gradient:NO];
    [self.view addSubview:self.topPopView];
    self.topPopView.delegate = self;
    self.topPopView.textFont = [UIFont systemFontOfSize:13];
    self.topPopView.arrowHorizontalPadding = 80;
    self.topPopView.textColor = UIColor.blueColor;
    
    [self.topPopView show];
    ```

* Example3

  * ```objc
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

  * ```objc
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

  * ```
    self.rightPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(160, 100+25, 0, 0) text:@"请阅读并勾选以下协议Right" direction:SNAugusPopViewDirectionRight gradient:NO];
    [self.view addSubview:self.rightPopView];
    self.rightPopView.delegate = self;
    self.rightPopView.textFont = [UIFont systemFontOfSize:10];
    self.rightPopView.arrowVerticalPadding = 5;
    self.rightPopView.textColor = UIColor.redColor;
    
    [self.rightPopView show];
    ```

* Example6

  * ```objc
    self.closePopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 480, 0, 0) text:@"请阅读并勾选以下协议SingleClose" direction:SNAugusPopViewDirectionBottom singleLine:YES closeButtonName:@"Close" gradient:NO];
    [self.view addSubview:self.closePopView];
    [self.closePopView show];
    ```

* Example7

  * ```objc
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
    * Include MBProgressHUD wherever you need it with `#import <SNAugusPopView/SNAugusPopView.h>`.
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
