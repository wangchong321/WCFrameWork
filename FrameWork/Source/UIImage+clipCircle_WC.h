//
//  UIImage+clipCircle_WC.h
//  2
//
//  Created by 王充 on 15/4/3.
//  Copyright (c) 2015年 王充. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (clipCircle_WC)
/**
 *  图片裁剪传入要裁减的图片,返回一张裁剪后的图片
 */
+ (instancetype)clipCircleImage:(NSString *)imgName;
/**
 *  图片裁剪传入要裁减的图片,边框的CGFloat,边框的颜色,返回一张裁剪后的图片
 */
+ (instancetype)clipCircleImageWithRing:(NSString *)imgName border:(CGFloat)border color:(UIColor *)color;


@end
