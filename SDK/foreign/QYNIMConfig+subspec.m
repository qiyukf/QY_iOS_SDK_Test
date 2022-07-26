//
//  QYNIMConfig+subspec.m
//  QYVendor
//
//  Created by zhongzhida on 2022/7/26.
//  Copyright © 2022 Netease. All rights reserved.
//

#import "QYNIMConfig+subspec.h"
#import "NSObject+Utils.h"

@implementation QYNIMConfig (subspec)
+ (void)load {
    [self swizzleMethods:QYNIMConfig.class originalSelector:@selector(isForeign) swizzledSelector:@selector(sw_isForeign)];
    [self swizzleMethods:QYNIMConfig.class originalSelector:@selector(nimLbsAddress) swizzledSelector:@selector(sw_nimLbsAddress)];
    [self swizzleMethods:QYNIMConfig.class originalSelector:@selector(nimLinkAddress) swizzledSelector:@selector(sw_nimLinkAddress)];
}
- (BOOL)sw_isForeign {
    return YES;
}
- (NSString *)sw_nimLbsAddress {
    return @"海外lbs地址";
}
- (NSString *)sw_nimLinkAddress {
    return @"海外link地址";
}
@end
