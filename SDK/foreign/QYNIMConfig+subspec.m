//
//  QYNIMConfig+subspec.m
//  QYVendor
//
//  Created by zhongzhida on 2022/7/26.
//  Copyright © 2022 Netease. All rights reserved.
//

#import "QYNIMConfig+subspec.h"
#import <objc/runtime.h>

@implementation QYNIMConfig (subspec)
+ (void)load {
    [self swizzleMethods:QYNIMConfig.class originalSelector:@selector(isForeign) swizzledSelector:@selector(sw_isForeign)];
    [self swizzleMethods:QYNIMConfig.class originalSelector:@selector(nimLbsAddress) swizzledSelector:@selector(sw_nimLbsAddress)];
    [self swizzleMethods:QYNIMConfig.class originalSelector:@selector(nimLinkAddress) swizzledSelector:@selector(sw_nimLinkAddress)];
}
+ (void)swizzleMethods:(Class)tagClass originalSelector:(SEL)origSel swizzledSelector:(SEL)swizSel {
    Method origMethod = class_getInstanceMethod(tagClass, origSel);
    Method swizMethod = class_getInstanceMethod(tagClass, swizSel);
    BOOL didAddMethod = class_addMethod(tagClass, origSel, method_getImplementation(swizMethod), method_getTypeEncoding(swizMethod));
    if (didAddMethod) {
        class_replaceMethod(tagClass, swizSel, method_getImplementation(origMethod), method_getTypeEncoding(origMethod));
    } else {
        method_exchangeImplementations(origMethod, swizMethod);
    }
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
