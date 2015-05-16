//
//  UIImage+Water_WC.h
//  4月1日图片去水印
//
//  Created by 王充 on 15/4/1.
//  Copyright (c) 2015年 王充. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Water_WC)
/**
 *  加上水印 bgImage:原图片名称 logo:logo图片名称 scale:logo图片的缩放比例 1为原比例 margin:logo图片距离右下角的距离  返回:加上水印后显示的新图片
 *
 *  @param bgImage 原图片名称
 *  @param logo    logo图片名称
 *  @param scale   logo图片的缩放比例 1为原比例
 *  @param margin  logo图片距离右下角的距离
 *
 *  @return 加上水印后的新图片
 */

+(instancetype)waterImgWith:(NSString *)bgImg logo:(NSString *)logo scale:(float)scale margin:(CGFloat)margin;
@end
