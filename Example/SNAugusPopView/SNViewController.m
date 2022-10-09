//
//  SNViewController.m
//  SNAugusPopView
//
//  Created by venn0126 on 10/14/2021.
//  Copyright (c) 2021 venn0126. All rights reserved.
//

#import "SNViewController.h"
#import <SNAugusPopView.h>

@interface SNViewController ()<SNAugusPopViewDelagate>

@property (nonatomic, strong) SNAugusPopView *allPopView;
@property (nonatomic, strong) SNAugusPopView *mulLinesPopView;

@property (nonatomic, strong) SNAugusPopView *topPopView;
@property (nonatomic, strong) SNAugusPopView *bottomPopView;

@property (nonatomic, strong) SNAugusPopView *leftPopView;
@property (nonatomic, strong) SNAugusPopView *rightPopView;

@property (nonatomic, strong) SNAugusPopView *closePopView;
@property (nonatomic, strong) SNAugusPopView *leftImagePopView;

@property (nonatomic, strong) SNAugusPopView *customViewPopView;
@property (nonatomic, strong) SNAugusPopView *siriPopView;

@property (nonatomic, copy) NSArray *buttonTitles;
@property (nonatomic, strong) UIView *testView;

@end

@implementation SNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self testPopView];

}

- (void)testPopView {
    
    self.testView = [[UIView alloc] init];
    self.testView.backgroundColor = UIColor.redColor;
    [self.view addSubview:self.testView];
    CGFloat redWidth = 100.0;
    CGFloat x = (self.view.frame.size.width - redWidth) * 0.5;
    self.testView.frame = CGRectMake(x, 100, redWidth, 50);
    
    
   
    CGFloat padding = 10.0;
    CGFloat popViewHeight = 50.0;
    CGFloat popViewWidth = (self.view.bounds.size.width - 5 * padding) * 0.25;
    CGFloat popViewY = 300;
    // 30,300
    for (int i = 0; i < 10; i++) {
        UIButton *popViewButton = [[UIButton alloc] init];
        popViewButton.titleLabel.font = [UIFont systemFontOfSize:11];
        popViewButton.backgroundColor = UIColor.greenColor;
        [popViewButton setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
        [popViewButton addTarget:self action:@selector(popViewButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        popViewButton.layer.cornerRadius = 5.0;
        popViewButton.tag = i;
        [self.view addSubview:popViewButton];
        [popViewButton setTitle:self.buttonTitles[i] forState:UIControlStateNormal];
        if (i < 4) {
            popViewButton.frame = CGRectMake((i + 1) * padding + i * popViewWidth, popViewY, popViewWidth, popViewHeight);
        } else if(i < 8) {
            popViewButton.frame = CGRectMake((i - 3) * padding + (i - 4) * popViewWidth, popViewY + 1 * (popViewHeight + padding), popViewWidth, popViewHeight);
        } else {
            popViewButton.frame = CGRectMake((i - 7) * padding + (i - 8) * popViewWidth, popViewY + 2 * (popViewHeight + padding), popViewWidth, popViewHeight);
        }
        
        switch (i) {
            case 0:{

                self.allPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(0, 80, 0, 0) customView:nil text:@"请阅读并勾选以下协议勾选以下协议All" direction:SNAugusPopViewDirectionNone singleLine:YES closeButtonName:@"close" leftImageName:@"left" gradient:YES];

//                self.allPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 750, 0, 0)  customView:nil text:@"请阅读并勾选以下协议勾选以下协议发发现新的炼金珠女呗冲啊擦法All" direction:SNAugusPopViewDirectionBottom singleLine:NO closeButtonName:@"close" leftImageName:@"left" gradient:YES];

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
                self.allPopView.closeButtonTopPadding = 15;

                [self.allPopView show];
                
                break;
            }
            case 1:{

//                self.mulLinesPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(130, 220, 0, 0) text:@"袅袅炊烟，小小村落，路上一道辙，你用你那母亲的脉搏和我诉说，我的祖国和我像海和浪花一朵MulLines" direction:SNAugusPopViewDirectionRight singleLine:NO gradient:NO];
                
                self.mulLinesPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(0, 120, 0, 0) text:@"袅袅炊烟，小小村落，路上一道辙，你用你那母亲的脉搏和我诉说，我的祖国和我像海和浪花一朵MulLines" direction:SNAugusPopViewDirectionTop singleLine:NO closeButtonName:@"" gradient:NO];
                
                [self.view addSubview:self.mulLinesPopView];
                self.mulLinesPopView.mulLineWidth = 100.0;
            //    self.mulLinesPopView.arrowVerticalPadding = 30.0;
                self.mulLinesPopView.textAlignment = NSTextAlignmentLeft;

            //    self.mulLinesPopView.backgroundColor = UIColor.yellowColor;

                self.mulLinesPopView.borderWidth = 5.0;
                self.mulLinesPopView.borderColor = UIColor.greenColor;


                [self.mulLinesPopView showWithDismissDelay:2.5];
                break;
            }
            case 2:{

                self.topPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(140, 180, 0, 0) text:@"请阅读并勾选以下协议Top" direction:SNAugusPopViewDirectionTop gradient:NO];
                [self.view addSubview:self.topPopView];
                self.topPopView.delegate = self;
                self.topPopView.textFont = [UIFont systemFontOfSize:13];
//                self.topPopView.arrowHorizontalPadding = 80;
            //    self.topPopView.textColor = UIColor.blueColor;

                [self.topPopView showWithDismissDelay:3 completion:nil];
                break;
            }
            case 3:{

                self.bottomPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(140, 240, 0, 0) text:@"请阅读并勾选以下协议Bottom" direction:SNAugusPopViewDirectionBottom gradient:YES];
                self.bottomPopView.delegate = self;
                [self.view addSubview:self.bottomPopView];

//                self.bottomPopView.arrowHorizontalPadding = 80;
                self.bottomPopView.textFont = [UIFont systemFontOfSize:16];

                self.bottomPopView.gradientColors = @[(id)(UIColor.orangeColor.CGColor),(id)UIColor.redColor.CGColor];
                self.bottomPopView.gradientStartPoint = CGPointMake(1.0, 0.5);
                self.bottomPopView.gradientEndPoint = CGPointMake(0.0, 0.5);
//                self.bottomPopView.gradientLocations = @[@0.5,@1.0];

                [self.bottomPopView showWithDismissDelay:3 completion:^(BOOL finished) {
                    NSLog(@"bottom popview dismiss");

                }];
                break;
            }
            case 4:{

                // 114
                self.leftPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(0, 280, 0, 0) text:@"请阅读并勾选以下协议Left" direction:SNAugusPopViewDirectionLeft gradient:NO];
                self.leftPopView.delegate = self;
//                [self.view addSubview:self.leftPopView];

                self.leftPopView.textFont = [UIFont systemFontOfSize:10];
                self.leftPopView.arrowVerticalPadding = 5.0;
                self.leftPopView.aBackgroundRed = 0/255.0;
                self.leftPopView.aBackgroundGreen = 191/255.0;
                self.leftPopView.aBackgroundBlue = 255/255.0;

                [self.leftPopView showToView:self.view];
                [self.leftPopView dismiss];
                break;
            }
            case 5:{

                self.rightPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(0, 500, 0, 0) text:@"请阅读并勾选以下协议Right" direction:SNAugusPopViewDirectionRight gradient:NO];
                self.rightPopView.delegate = self;
                self.rightPopView.textFont = [UIFont systemFontOfSize:10];
                self.rightPopView.arrowVerticalPadding = 5;
                self.rightPopView.textColor = UIColor.redColor;

                [self.rightPopView showToView:self.view];
                [self.rightPopView dismissDelay:4.5];
                break;
            }
            case 6:{

                self.closePopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(0, 550, 0, 0) text:@"请阅读并勾选以下协议SingleClose" direction:SNAugusPopViewDirectionRight singleLine:YES closeButtonName:@"Close" gradient:NO];
                [self.closePopView showToView:self.view];
                [self.closePopView dismissDelay:5.5 completion:nil];
                break;
            }
            case 7:{

                // 571
                self.leftImagePopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(0, 600, 0, 0) text:@"请阅读并勾选以下协议LeftImage" direction:SNAugusPopViewDirectionLeft singleLine:YES leftImageName:@"left" gradient:NO];
                
                self.leftImagePopView.leftImageWidth = 30;
                self.leftImagePopView.leftImageHeight = 15;
                
                
                [self.leftImagePopView showToView:self.view];
                [self.leftImagePopView dismissDelay:6.5 completion:^(BOOL finished) {
                    NSLog(@"leftImagePopView dismiss completion");
                }];
                
                break;
            }
            case 8:{

                UILabel *testLabel = [[UILabel alloc] init];
                testLabel.frame = CGRectMake(0, 0, 180, 40);
                testLabel.text = @"轻击播放键，解放双眼。文案可配置轻击播放键，解放双眼，轻击播放键，解放双眼";
                testLabel.numberOfLines = 0;
                testLabel.font = [UIFont systemFontOfSize:12];
            //    testLabel.backgroundColor = UIColor.greenColor;
                testLabel.textColor = UIColor.whiteColor;
                
                
                self.customViewPopView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(0, 650, 0, 0) customView:testLabel direction:SNAugusPopViewDirectionBottom gradient:NO];
                self.customViewPopView.arrowHorizontalPadding = 50;
//                self.customViewPopView.labelHorizontalPadding = 20;
//                self.customViewPopView.labelVerticalPadding = 15;
                self.customViewPopView.arrowWidth = 20;
                self.customViewPopView.arrowHeight = 12;
                [self.view addSubview:self.customViewPopView];
                [self.customViewPopView show];
                
                break;
            }
            case 9:{

                SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(50, 730, 0, 0) text:@"用Siri使用搜狐新闻，设置语音唤醒" direction:SNAugusPopViewDirectionNone singleLine:YES closeButtonName:@"icotext_jump_v6" gradient:NO];
                NSLog(@"siri contentSize is %@",NSStringFromCGSize(popView.contentSize));
                popView.aBackgroundGreen = 0.93;
                popView.aBackgroundRed = 0.93;
                popView.aBackgroundBlue = 0.93;
                popView.aBackgroundShowAlpha = 1.0;
            //    popView.animationDuration = 500.0;
                popView.closeButtonBackgroundColor = UIColor.clearColor;
                popView.textColor = [UIColor blueColor];
                popView.textFont = [UIFont systemFontOfSize:15];
                [self.view addSubview:popView];
                
                [popView showWithDismissDelay:1.0 completion:^(BOOL finished) {
                    NSLog(@"siri popView dismiss");
                }];
                
                
                self.siriPopView = popView;
                
                break;
            }
        }
    }
}

#pragma mark - Button Action

- (void)popViewButtonAction:(UIButton *)sender {
    if (sender.tag == 0) {
        [self.allPopView show];
    }else if(sender.tag == 1) {
        [self.mulLinesPopView show];
    }else if(sender.tag == 2) {
        [self.topPopView show];
    }else if(sender.tag == 3) {
        [self.bottomPopView showToView:self.view];
    }else if(sender.tag == 4) {
        [self.leftPopView showWithDismissDelay:1];
    }else if(sender.tag == 5) {
        [self.rightPopView show];
    }else if(sender.tag == 6) {
        [self.closePopView show];
    }else if(sender.tag == 7) {
        [self.leftImagePopView show];
    }else if(sender.tag == 8) {
        [self.customViewPopView show];
    }else if(sender.tag == 9) {
        [self.siriPopView showWithDismissDelay:2 completion:nil];
    }
    
}


- (void)augusPopViewClick:(SNAugusPopView *)popView {
    
    NSLog(@"augus popView action");
}
#pragma mark - Lazy Load

- (NSArray *)buttonTitles {
    if (!_buttonTitles) {
        _buttonTitles = @[@"showAll",@"showMulLines",@"showTop",@"showBottom",@"showLeft",@"showRight",@"showClose",@"showLeftImage",@"customView",@"siriView"];
    }
    return _buttonTitles;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
