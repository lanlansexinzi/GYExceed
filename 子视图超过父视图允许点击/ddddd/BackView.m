//
//  BackView.m
//  ddddd
//
//  Created by 耿一 on 2018/1/9.
//  Copyright © 2018年 耿一. All rights reserved.
//

#import "BackView.h"

@implementation BackView
{
    UIView * _smallV;
}


- (void)drawRect:(CGRect)rect {
    _smallV = [[UIView alloc]initWithFrame:CGRectMake(0, -50, 80, 80)];
    _smallV.backgroundColor = [UIColor orangeColor];
    [self addSubview:_smallV];
    
    UITapGestureRecognizer * smallTGR = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(smallVClick)];
    [_smallV addGestureRecognizer:smallTGR];
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)smallVClick
{
    NSLog(@"小的点击");
}



- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    UIView *view = [super hitTest:point withEvent:event];
    if (view == nil) {
        // 转换坐标系
        CGPoint newPoint = [self convertPoint:point fromView:self];
        // 判断触摸点是否在button上
        if (CGRectContainsPoint(_smallV.frame, newPoint)) {
            
            view = _smallV;
        }
    }
    return view;
}

@end
