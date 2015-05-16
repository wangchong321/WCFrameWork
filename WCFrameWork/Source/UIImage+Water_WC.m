//
//  UIImage+Water_WC.m
//  4月1日图片去水印
//
//  Created by 王充 on 15/4/1.
//  Copyright (c) 2015年 王充. All rights reserved.
//

#import "UIImage+Water_WC.h"

@implementation UIImage (Water_WC)
+(instancetype)waterImgWith:(NSString *)bgImg logo:(NSString *)logo scale:(float)scale margin:(CGFloat)margin{
    UIImage *bgImage=[UIImage imageNamed:bgImg];
    if (bgImage==nil) {
        NSLog(@"图片不能为空请重新加载");
    }
    /* 1.创建一个基于位图的上下文(开启一个基于位图的上下文)
        size : 新图片的尺寸
        opaque : YES : 不透明,  NO : 透明
        这行代码过后.就相当于创建一张新的bitmap,也就是新的UIImage对象
     0.0  是否伸缩图片(0.0代表不伸缩)
     */
    UIGraphicsBeginImageContextWithOptions(bgImage.size, NO, 0.0);
    // 画背景
    [bgImage drawInRect:CGRectMake(0, 0, bgImage.size.width, bgImage.size.height)];
    // 画右下角水印
    UIImage *waterImage=[UIImage imageNamed:logo];
    if (waterImage==nil) {
        NSLog(@"图片不能为空请重新加载");
    }
    CGFloat myScale=scale;
    CGFloat myMargin=margin;
    CGFloat waterH=waterImage.size.height*myScale;
    CGFloat waterW=waterImage.size.width*myScale;
    CGFloat waterX=bgImage.size.width-waterW-myMargin;
    CGFloat waterY=bgImage.size.height-waterH-myMargin;
    
    [waterImage drawInRect:CGRectMake(waterX, waterY, waterW, waterH)];
    // 4.从上下文中取得制作完毕的UIImage对象
    UIImage *newImage=UIGraphicsGetImageFromCurrentImageContext();
    // 5.结束上下文
    UIGraphicsEndImageContext();
    return newImage;
}
@end
