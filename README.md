# 子视图超过父视图的部分点击响应

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


//testLog
