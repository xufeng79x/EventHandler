//
//  UIView+FirstResponder.m
//  XFResponderChainTest
//
//  Created by apple on 16/2/3.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UIView+FirstResponder.h"

@implementation UIView (FirstResponder)

- (UIView *)findFirstResponder
{
    if ([self isFirstResponder])
        return self;
    
    for (UIView * subView in self.subviews)
    {
        UIView * fr = [subView findFirstResponder];
        if (fr != nil)
            return fr;
    }
    
    return nil;
}


@end
