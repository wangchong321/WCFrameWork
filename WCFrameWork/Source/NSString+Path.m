//
//  NSString+Path.m
//  B02-沙盒目录
//
//  Created by apple on 15/4/19.
//  Copyright (c) 2015年 heima. All rights reserved.
//

#import "NSString+Path.h"

@implementation NSString (Path)
- (NSString *)cachePath{
    NSString *fileName = [self lastPathComponent];
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    return [path stringByAppendingPathComponent:fileName];
}
- (NSString *)documentPath{
    NSString *fileName = [self lastPathComponent];
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    return [path stringByAppendingPathComponent:fileName];

}
- (NSString *)tmpPath{
    NSString *fileName = [self lastPathComponent];
    NSString *path = NSTemporaryDirectory();
    return [path stringByAppendingPathComponent:fileName];
}
@end
