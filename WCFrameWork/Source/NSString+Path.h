#import <Foundation/Foundation.h>

@interface NSString (Path)
/**
 *  返回缓存的完整路径名称
 */
- (NSString *)cachePath;
/**
 *  返回文档的完整路径名称
 */
- (NSString *)documentPath;
/**
 *  返回临时的完整路径名称
 */
- (NSString *)tmpPath;
@end
