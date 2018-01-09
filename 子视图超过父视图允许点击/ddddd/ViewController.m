//
//  ViewController.m
//  ddddd
//
//  Created by 耿一 on 2018/1/3.
//  Copyright © 2018年 耿一. All rights reserved.
//

#import "ViewController.h"
#import "BackView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = @"ssss";
    self.navigationController.navigationBar.subviews.firstObject.alpha = 0.0;
    UIView *backBar = self.navigationController.navigationBar.subviews.firstObject;
    backBar.subviews.firstObject.hidden = YES;
    backBar.subviews.lastObject.hidden = YES;
    BackView * bigV = [[BackView alloc]initWithFrame:CGRectMake(100, 200, 100, 100)];
    bigV.backgroundColor= [UIColor blueColor];
    [self.view addSubview:bigV];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
