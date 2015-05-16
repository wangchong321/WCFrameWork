#import "UIImage+clipCircle_WC.h"

@implementation UIImage (clipCircle_WC)
+ (instancetype)clipCircleImage:(NSString *)imgName
{
    // 0 .加载要裁剪的图片
    UIImage *img = [UIImage imageNamed:imgName];
    
    if (img==nil) {
        NSLog(@"图片不能为空,请重新加载");
    }
    // 1. 开启一个新的位图上下文对象
    UIGraphicsBeginImageContextWithOptions(img.size, NO, 0.0);
    
    // 1.1 获取当前的上下文对象
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    
    
    // 2. 绘制一个圆形
    // 确定圆心
    CGFloat centerX = img.size.width * 0.5;
    CGFloat centerY = img.size.height * 0.5;
    // 确定半径
    CGFloat radius = MIN(img.size.width, img.size.height) * 0.5;
    // 绘制一个圆
    CGContextAddArc(ctx, centerX, centerY, radius, 0, M_PI * 2, 0);
    // 裁剪
    CGContextClip(ctx);
    
    
    
    
    // 3. 绘制图片到上下文
    [img drawInRect:CGRectMake(0, 0, img.size.width, img.size.height)];
    
    
    
    // 4. 获取上下文中已经绘制好的图形
    UIImage *imgClip =  UIGraphicsGetImageFromCurrentImageContext();
    
    
    // 5. 结束一个上下文对象
    UIGraphicsEndImageContext();
    
    
    // 6. 返回绘制好的图片
    return imgClip;
}


+ (instancetype)clipCircleImageWithRing:(NSString *)imgName border:(CGFloat)border color:(UIColor *)color
{
    //----------------- 裁剪成一个带圆环的图片 --------------------------
    // 1. 加载要裁剪的图片
    UIImage *img = [UIImage imageNamed:imgName];
    if (img==nil) {
        NSLog(@"图片不能为空,请重新加载");
    }
    // 2. 创建一个位图上下文对象(这个上下文对象的大小要比实际图片的大小大一些（原因就是为了给圆环留一定的宽度）)
    
    // 保存位图上下文的大小
    CGFloat ctxW = img.size.width + border * 2;
    CGFloat ctxH = img.size.height + border * 2;
    
    // 开启位图上下文
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(ctxW, ctxH), NO, 0.0);
    
    // 获取当前上下文对象
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    
    // 先绘制一个外侧的圆
    // 确定圆心
    CGFloat centerX = ctxW * 0.5;
    CGFloat centerY = ctxH * 0.5;
    // 确定半径
    CGFloat outsideRadius = MIN(ctxW, ctxH) * 0.5;
    // 绘制外侧的圆
    CGContextAddArc(ctx, centerX, centerY, outsideRadius, 0, M_PI * 2, 0);
    // 设置颜色
    [color setFill];
    // 渲染
    CGContextFillPath(ctx);
    
    
    
    
    // 再绘制一个用来裁剪图片的圆
    CGFloat insideRadius = outsideRadius - border;
    // 绘制圆
    CGContextAddArc(ctx, centerX, centerY, insideRadius, 0, M_PI * 2, 0);
    // 进行裁剪
    CGContextClip(ctx);
    
    
    
    
    // 把图片绘制到上下文中
    [img drawInRect:CGRectMake(border, border, img.size.width, img.size.height)];
    
    // 从绘图上下文种获取图片
    UIImage *imgClip = UIGraphicsGetImageFromCurrentImageContext();
    
    
    // 结束位图上下文
    UIGraphicsEndImageContext();
    
    // 返回图片
    return imgClip;
    
    
    //----------------- 裁剪成一个带圆环的图片 --------------------------
}
@end
