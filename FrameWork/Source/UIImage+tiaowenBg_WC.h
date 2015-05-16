//
//  UIImage+tiaowenBg_WC.h
//  4月3日背景条纹
//
//  Created by 王充 on 15/4/3.
//  Copyright (c) 2015年 王充. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (tiaowenBg_WC)

/**
*  返回画好的条纹背景(类似记事本).drowView要花到哪个View上 rowHeigh行高 margin线的开始与屏幕的间距,color线的颜色 bgColor背景颜色
*
*  @param rowHeigh <#rowHeigh description#>
*  @param margin   <#margin description#>
*  @param color    <#color description#>
*  @param bgColor  <#bgColor description#>
*
*  @return <#return value description#>
*/
+(UIImage *)tiaowenBgWithDrowView:(UIView *)drowView  RowHeigh:(CGFloat)rowHeigh margin:(CGFloat)margin lineColor:(UIColor *)color bgColor:(UIColor *)bgColor;
@end
