//
//  UIImage+tiaowenBg_WC.m
//  4月3日背景条纹
//
//  Created by 王充 on 15/4/3.
//  Copyright (c) 2015年 王充. All rights reserved.
//

#import "UIImage+tiaowenBg_WC.h"

@implementation UIImage (tiaowenBg_WC)

+(UIImage *)tiaowenBgWithDrowView:(UIView *)drowView RowHeigh :(CGFloat)rowHeigh margin:(CGFloat)margin lineColor:(UIColor *)color bgColor:(UIColor *)bgColor{
    
    CGFloat bgW=drowView.frame.size.width;
    CGFloat bgH=rowHeigh;
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(bgW, bgH), NO, 0.0);
    
    
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    CGContextAddRect(ctx, CGRectMake(0, 0, bgW, bgH));
    // 背景颜色

    [bgColor set];
    CGContextFillPath(ctx);
    
    CGContextMoveToPoint(ctx, margin, bgH);
    CGContextAddLineToPoint(ctx, bgW-margin, bgH);
    // 线颜色
    [color set];
    CGContextSetLineWidth(ctx, 1.0);
    CGContextStrokePath(ctx);
    
    
    UIImage *imgRowBg=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    return imgRowBg;
}

@end
