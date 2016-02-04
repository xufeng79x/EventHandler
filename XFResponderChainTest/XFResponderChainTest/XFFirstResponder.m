//
//  XFFirstResponder.m
//  XFResponderChainTest
//
//  Created by apple on 16/2/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "XFFirstResponder.h"

@implementation XFFirstResponder

-(BOOL)canBecomeFirstResponder
{
    return YES;
}

// 打印按钮处理方法，用于测试定位第一响应者是谁
-(void)pressPrint
{
    NSLog(@"do pressPrint,I am in %@", self.name);
}

// 处理触摸事件
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 打印当前对象处理结果
    NSLog(@"do touchBegan, I am in %@", self.name);
    
    // 继续执行父类方法，由此将得出整个响应者链路径
    [super touchesBegan:touches withEvent:event];
}
@end
