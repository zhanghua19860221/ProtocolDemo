//
//  ViewController.m
//  协议代理练习Demo
//
//  Created by YG on 15/8/28.
//  Copyright (c) 2015年 YG. All rights reserved.
//

#import "ViewController.h"
#import "DeViewController.h"

@interface ViewController ()<changeColor>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createButton];
}

- (void)changgeColor:(UIColor *)color{

    self.view.backgroundColor = color;

}

- (void)createButton {

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(self.view.center.x-50, 200, 100, 50);
    [button setTitle:@"改变颜色" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor cyanColor];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal]; 
    [self.view addSubview:button];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
}

- (void)push {

    DeViewController *vc = [[DeViewController alloc]init];
    vc.delegate = self;
    [self presentViewController:vc animated:YES completion:nil];

}


@end
