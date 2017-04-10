//
//  DeViewController.m
//  协议代理练习Demo
//
//  Created by YG on 15/8/28.
//  Copyright (c) 2015年 YG. All rights reserved.
//

#import "DeViewController.h"

@interface DeViewController ()<UITableViewDelegate,UITableViewDataSource>
{

    UITableView *_tableView;

}
@property (nonatomic, strong) NSArray *dataArray;


@end

@implementation DeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dataArray = @[@"red",@"blue"];
    [self createTableView];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row==0) {
        
        [self.delegate changgeColor:[UIColor redColor]];

    } else {
    
        [self.delegate changgeColor:[UIColor blueColor]];
    
    }
    [self dismissViewControllerAnimated:YES completion:nil];

}

#pragma mark 创建TableView
- (void)createTableView {
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
}

#pragma mark tableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID"];
        
    }
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}


@end
