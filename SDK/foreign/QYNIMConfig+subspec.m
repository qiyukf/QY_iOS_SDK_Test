//
//  QYNIMConfig+subspec.m
//  QYVendor
//
//  Created by zhongzhida on 2022/7/26.
//  Copyright © 2022 Netease. All rights reserved.
//

#import "QYNIMConfig+subspec.h"

@implementation QYNIMConfig (subspec)
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
