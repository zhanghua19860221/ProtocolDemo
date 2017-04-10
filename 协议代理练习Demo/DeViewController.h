//
//  DeViewController.h
//  协议代理练习Demo
//
//  Created by YG on 15/8/28.
//  Copyright (c) 2015年 YG. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol changeColor <NSObject>

- (void)changgeColor:(UIColor *)color;

@end

@interface DeViewController : UIViewController

@property (nonatomic) id<changeColor>delegate;


@end
