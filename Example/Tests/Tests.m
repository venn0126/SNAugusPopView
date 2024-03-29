//
//  SNAugusPopViewTests.m
//  SNAugusPopViewTests
//
//  Created by venn0126 on 10/14/2021.
//  Copyright (c) 2021 venn0126. All rights reserved.
//

@import XCTest;
#import <objc/runtime.h>
#import <objc/message.h>

#import "SNAugusPopView.h"

#pragma mark - Some Marco

#define SNTestAugusPopViewIsVisible(popView, rootView) \
do { \
XCTAssertEqualObjects(popView.superview, rootView,@"The popView should be added to the view"); \
XCTAssertEqual(popView.alpha, 1.0, @"The popView shoule be visible"); \
XCTAssertFalse(popView.hidden, @"The popView shoule be visible"); \
} while(0)


#define SNTestAugusPopViewIsHidden(popView) \
do { \
XCTAssertEqual(popView.alpha, 0.01, @"The popView should not visible"); \
} while(0)


@interface Tests : XCTestCase<SNAugusPopViewDelagate>

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}


#pragma mark - Initialization

- (void)testPopViewInitializers {
    
    XCTAssertNotNil([[SNAugusPopView alloc] init]);
    NSKeyedUnarchiver *dummyUnarchiver;
    if (@available(iOS 11.0, *)) {
        dummyUnarchiver = [[NSKeyedUnarchiver alloc] initForReadingFromData:[NSData data] error:nil];
    } else {
        // Fallback on earlier versions
        dummyUnarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:[NSData data]];
    }
    XCTAssertNotNil([[SNAugusPopView alloc] initWithCoder:dummyUnarchiver]);
    XCTAssertNotNil([[SNAugusPopView alloc] initWithFrame:CGRectZero]);
    XCTAssertNotNil([[SNAugusPopView alloc] initWithFrame:CGRectZero customView:nil text:@"" direction:SNAugusPopViewDirectionTop singleLine:NO closeButtonName:@"" leftImageName:@"" gradient:NO]);
    
}

#pragma mark - Convenience

- (void)testPopViewPublicMethods {
    
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    
    SNAugusPopView *popView = [[SNAugusPopView alloc] init];
    XCTAssertNotNil(popView, @"A popView should be created");
    
    [rootView addSubview:popView];
    [popView show];
    SNTestAugusPopViewIsVisible(popView, rootView);

    XCTAssertFalse(popView.hidden);

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

        [popView dismiss];
        XCTAssertTrue(popView.hidden);

    });

    [popView removeFromSuperview];    
    [popView showToView:rootView];
    XCTAssertFalse(popView.hidden);
    XCTAssertTrue([rootView.subviews containsObject:popView]);

    
}

#pragma mark - Text

- (void)testPopViewText {
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectZero text:@"" direction:SNAugusPopViewDirectionTop gradient:NO];
    [rootView addSubview:popView];
    
    popView.text = @"我喜欢高田";
    popView.textColor = UIColor.redColor;
    popView.textFont = [UIFont systemFontOfSize:15];
    popView.textAlignment = NSTextAlignmentRight;

    XCTAssertNotNil(popView.text);
    XCTAssertEqual(popView.text, @"我喜欢高田");
    
    XCTAssertNotNil(popView.textColor);
    XCTAssertEqual(popView.textColor, UIColor.redColor);
    
    XCTAssertNotNil(popView.textFont);
    XCTAssertEqual(popView.textFont, [UIFont systemFontOfSize:15]);
    
    XCTAssertNotNil(@(popView.textAlignment));
    XCTAssertEqual(popView.textAlignment, NSTextAlignmentRight);
    

    
}


#pragma mark - BackgroundColor Alpha

- (void)testPopViewBackgroundColorAlpha {
    
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectZero text:@"" direction:SNAugusPopViewDirectionTop gradient:NO];
    [rootView addSubview:popView];
    
    popView.cornerRadius = 3.0;
    popView.aBackgroundShowAlpha = 0.6;
    popView.aBackgroundRed = 0.2;
    popView.aBackgroundGreen = 0.3;
    popView.aBackgroundBlue = 0.4;
    
    XCTAssertNotNil(@(popView.cornerRadius));
    XCTAssertEqual(popView.cornerRadius, 3.0);
    
    XCTAssertNotNil(@(popView.aBackgroundShowAlpha));
    XCTAssertEqual(popView.aBackgroundShowAlpha, 0.6);
    
    XCTAssertNotNil(@(popView.aBackgroundRed));
    XCTAssertEqual(popView.aBackgroundRed, 0.2);

    XCTAssertNotNil(@(popView.aBackgroundGreen));
    XCTAssertEqual(popView.aBackgroundGreen, 0.3);
    
    XCTAssertNotNil(@(popView.aBackgroundBlue));
    XCTAssertEqual(popView.aBackgroundBlue, 0.4);
}


#pragma mark - Border

- (void)testPopViewBorder {
    
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectZero text:@"" direction:SNAugusPopViewDirectionTop gradient:NO];
    [rootView addSubview:popView];
    
    popView.borderColor = UIColor.greenColor;
    popView.borderWidth = 2.0;
    
    
    XCTAssertNotNil(popView.borderColor);
    XCTAssertEqual(popView.borderColor, UIColor.greenColor);
    
    XCTAssertNotNil(@(popView.borderWidth));
    XCTAssertEqual(popView.borderWidth, 2.0);
    
   
}

#pragma mark - Animation

- (void)testPopViewAnimation {
    
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectZero text:@"" direction:SNAugusPopViewDirectionTop gradient:NO];
    [rootView addSubview:popView];
    
    popView.delayDismissDuration = 4.0;
    popView.showDuration = 0.5;
    popView.dismissDuration = 0.6;
    
    XCTAssertNotNil(@(popView.delayDismissDuration));
    XCTAssertEqual(popView.delayDismissDuration, 4.0);
    
    XCTAssertNotNil(@(popView.showDuration));
    XCTAssertEqual(popView.showDuration, 0.5);
    
    XCTAssertNotNil(@(popView.dismissDuration));
    XCTAssertEqual(popView.dismissDuration, 0.6);
    
}

#pragma mark - Arrow

- (void)testPopViewArrow {
    
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectZero text:@"" direction:SNAugusPopViewDirectionTop gradient:NO];
    [rootView addSubview:popView];
    
    popView.direction = SNAugusPopViewDirectionRight;
    // for direction left and right
    popView.labelHorizontalPadding = 3.0;
    // for direction bottom and top
    popView.labelVerticalPadding = 4.0;
//
    popView.arrowHorizontalPadding = 2.0;
    popView.arrowVerticalPadding = 30.0;
//
    popView.arrowWidth = 16.0;
    popView.arrowHeight = 8.0;
    
    XCTAssertNotNil(@(popView.direction));
    XCTAssertEqual(@(popView.direction), @(SNAugusPopViewDirectionRight));
    
    
    XCTAssertNotNil(@(popView.labelHorizontalPadding));
    XCTAssertEqual(popView.labelHorizontalPadding, 3.0);
    
    XCTAssertNotNil(@(popView.labelVerticalPadding));
    XCTAssertEqual(popView.labelVerticalPadding, 4.0);
    
    XCTAssertNotNil(@(popView.arrowHorizontalPadding));
    XCTAssertEqual(popView.arrowHorizontalPadding, 2.0);
    
    XCTAssertNotNil(@(popView.arrowVerticalPadding));
    XCTAssertEqual(popView.arrowVerticalPadding, 30.0);
    
    XCTAssertNotNil(@(popView.arrowWidth));
    XCTAssertEqual(popView.arrowWidth, 16.0);
    
    XCTAssertNotNil(@(popView.arrowHeight));
    XCTAssertEqual(popView.arrowHeight, 8.0);
    
}

#pragma mark - Multiple Lines

- (void)testPopViewMultipleLines {
    
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectZero text:@"" direction:SNAugusPopViewDirectionTop singleLine:NO gradient:NO];
    [rootView addSubview:popView];
    
    popView.mulLineWidth = 220.0;
    
    XCTAssertNotNil(@(popView.mulLineWidth));
    XCTAssertEqual(popView.mulLineWidth, 220.0);
    
    
}

#pragma mark - Close Button

- (void)testPopViewCloseButton {
    
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectZero text:@"" direction:SNAugusPopViewDirectionTop singleLine:YES closeButtonName:@"" gradient:NO];
    [rootView addSubview:popView];
    
    popView.closeButtonName = @"love";
    popView.closeButtonleading = 10.0;
    popView.closeButtonTopPadding = 7.0;
    popView.closeButtonWidth = 5.0;
    popView.closeButtonHeight = 8.0;
    popView.closeButtonBackgroundColor = UIColor.redColor;
    
    XCTAssertTrue((popView.closeButtonName.length > 0));
    XCTAssertEqual(popView.closeButtonName, @"love");
    
    XCTAssertNotNil(@(popView.closeButtonleading));
    XCTAssertEqual(popView.closeButtonleading, 10.0);
    
    XCTAssertNotNil(@(popView.closeButtonTopPadding));
    XCTAssertEqual(popView.closeButtonTopPadding, 7.0);
    
    XCTAssertNotNil(@(popView.closeButtonWidth));
    XCTAssertEqual(popView.closeButtonWidth, 5.0);
    
    XCTAssertNotNil(@(popView.closeButtonHeight));
    XCTAssertEqual(popView.closeButtonHeight, 8.0);
    
    XCTAssertNotNil(popView.closeButtonBackgroundColor);
    XCTAssertEqual(popView.closeButtonBackgroundColor, UIColor.redColor);
    
}


#pragma mark - Left ImageView

- (void)testPopViewLeftImageView {
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectZero text:@"" direction:SNAugusPopViewDirectionTop singleLine:YES leftImageName:@"" gradient:NO];
    [rootView addSubview:popView];
    
    popView.leftImageName = @"tian";
    popView.leftImageWidth = 12.0;
    popView.leftImageHeight = 16.0;
    popView.leftImageLabelPadding = 11.0;
    popView.leftImageBackgroundColor = UIColor.redColor;
    
    XCTAssertTrue((popView.leftImageName.length > 0));
    XCTAssertEqual(popView.leftImageName, @"tian");
    
    XCTAssertNotNil(@(popView.leftImageWidth));
    XCTAssertEqual(popView.leftImageWidth, 12.0);
    
    XCTAssertNotNil(@(popView.leftImageHeight));
    XCTAssertEqual(popView.leftImageHeight, 16.0);
    
    XCTAssertNotNil(@(popView.leftImageLabelPadding));
    XCTAssertEqual(popView.leftImageLabelPadding, 11.0);
    
    XCTAssertNotNil(popView.leftImageBackgroundColor);
    XCTAssertEqual(popView.leftImageBackgroundColor, UIColor.redColor);
    
}


#pragma mark - Gradient Effect

- (void)testPopViewGradientEffect {
    
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectZero text:@"" direction:SNAugusPopViewDirectionTop singleLine:YES leftImageName:@"" gradient:YES];
    [rootView addSubview:popView];
    
    NSArray *colors = @[(id)(UIColor.orangeColor.CGColor),(id)UIColor.redColor.CGColor];
    popView.gradientColors = colors;
    popView.gradientStartPoint = CGPointMake(1.0, 0.5);
    popView.gradientEndPoint = CGPointMake(0.0, 0.5);
    NSArray *locations = @[@0.5,@1.0];
    popView.gradientLocations = locations;
    
    XCTAssertNotNil(popView.gradientColors);
    XCTAssertEqual(popView.gradientColors.firstObject, colors.firstObject);
    XCTAssertEqual(popView.gradientColors.lastObject, colors.lastObject);

    
    XCTAssertTrue(CGPointEqualToPoint(popView.gradientStartPoint, CGPointMake(1.0, 0.5)));
    XCTAssertTrue(CGPointEqualToPoint(popView.gradientEndPoint, CGPointMake(0.0, 0.5)));
    
    
    XCTAssertNotNil(popView.gradientLocations);
    XCTAssertEqual(popView.gradientLocations.firstObject, locations.firstObject);
    XCTAssertEqual(popView.gradientLocations.lastObject, locations.lastObject);
}

#pragma mark - CustomView

- (void)testPopViewCustomView {
    
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    
    UILabel *testLabel = [[UILabel alloc] init];
    testLabel.frame = CGRectMake(0, 0, 180, 40);
    testLabel.text = @"轻击播放键，解放双眼。文案可配置轻击播放键，解放双眼，轻击播放键，解放双眼";
    testLabel.numberOfLines = 0;
    testLabel.font = [UIFont systemFontOfSize:12];
    testLabel.textColor = UIColor.whiteColor;
    
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectMake(40, 50, 120, 50) customView:testLabel direction:SNAugusPopViewDirectionBottom gradient:NO];
    popView.cornerRadius = 2.0;
    popView.labelHorizontalPadding = 3.0;
    popView.labelVerticalPadding = 4.0;
    popView.arrowWidth = 11;
    popView.arrowHeight = 8;
    
    XCTAssertNotNil(popView);
    [rootView addSubview:popView];
    
//    popView.customView = nil;
    XCTAssertNotNil(popView.customView);
    XCTAssertEqual(popView.customView, testLabel);
    
    XCTAssertNotNil(@(popView.cornerRadius));
    XCTAssertEqual(popView.cornerRadius, 2.0);
    
    XCTAssertNotNil(@(popView.labelHorizontalPadding));
    XCTAssertEqual(popView.labelHorizontalPadding, 3.0);
    
    XCTAssertNotNil(@(popView.labelVerticalPadding));
    XCTAssertEqual(popView.labelVerticalPadding, 4.0);
    
    XCTAssertNotNil(@(popView.arrowWidth));
    XCTAssertEqual(popView.arrowWidth, 11.0);
    
    XCTAssertNotNil(@(popView.arrowHeight));
    XCTAssertEqual(popView.arrowHeight, 8.0);
    
    
}


#pragma mark - Delegate

- (void)testPopViewDelegate {
    
    UIViewController *rootViewController = UIApplication.sharedApplication.windows.firstObject.rootViewController;
    UIView *rootView = rootViewController.view;
    SNAugusPopView *popView = [[SNAugusPopView alloc] initWithFrame:CGRectZero text:@"" direction:SNAugusPopViewDirectionTop singleLine:YES leftImageName:@"" gradient:YES];
    popView.delegate = self;
    [rootView addSubview:popView];
    
    
    UIGestureRecognizer *gestureRecogniser = popView.gestureRecognizers.firstObject;
    Class gestureRecogniserTarget = NSClassFromString(@"UIGestureRecognizerTarget");
    Ivar targetIvar = class_getInstanceVariable(gestureRecogniserTarget, "_target");
    Ivar actionIvar = class_getInstanceVariable(gestureRecogniserTarget, "_action");

    for (id gestureRecogniserTarget in [gestureRecogniser valueForKey:@"targets"]) {
        id target = object_getIvar(gestureRecogniserTarget, targetIvar);
        SEL action = (__bridge void *)object_getIvar(gestureRecogniserTarget, actionIvar);
        void (*actionMethod)(id, SEL, id) = (void (*)(id, SEL, id))objc_msgSend;
        actionMethod(target, action, gestureRecogniser);
    }
    
}

- (void)augusPopViewClick:(SNAugusPopView *)popView {
    
    XCTAssertNotNil(popView);
}
@end

