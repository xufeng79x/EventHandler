//
//  NoToouchEventView.m
//  XFResponderChainTest
//
//  Created by apple on 16/2/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "NoToouchEventView.h"

@implementation NoToouchEventView
-(BOOL)canBecomeFirstResponder
{
    return YES;
}

// 打印按钮处理方法，用于测试定位第一响应者是谁
-(void)pressPrint
{
    NSLog(@"do pressPrint,I am in %@", self.name);
}
@end
