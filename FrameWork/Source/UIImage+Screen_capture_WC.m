//
//  UIImage+Screen_capture_WC.m
//  HM06截屏
//
//  Created by 王充 on 15/4/3.
//  Copyright (c) 2015年 heima. All rights reserved.
//

#import "UIImage+Screen_capture_WC.h"

@implementation UIImage (Screen_capture_WC)
+ (instancetype)saveShotWithView:(UIView *)view
{
    // 1.开启一个"位图"上下文对象
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 相上下文中绘制图形
    [view.layer renderInContext:ctx];
    
    
    // 从上下文对象中获取绘制好的图片
    UIImage *imgScreen = UIGraphicsGetImageFromCurrentImageContext();
    
    // 2. 结束上下文对象
    UIGraphicsEndImageContext();
    
    // 返回截图
    return imgScreen;
}

@end
