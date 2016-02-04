//
//  ViewController.m
//  XFResponderChainTest
//
//  Created by apple on 16/2/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "XFFirstResponder.h"
#import "UIView+FirstResponder.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet XFFirstResponder *viewA;
@property (weak, nonatomic) IBOutlet XFFirstResponder *viewB;
@property (weak, nonatomic) IBOutlet XFFirstResponder *viewC;
@property (weak, nonatomic) IBOutlet XFFirstResponder *viewD;
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) UISearchBar *searchBar;
@end

@implementation ViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    // 将view设定名称便于区分
    self.viewA.name = @"viewA";
    self.viewB.name = @"viewB";
    self.viewC.name = @"viewC";
    self.viewD.name = @"viewD";

    // 将button设置action，target设置为nil，这将导致此事件去像第一相应者发送事件，便于我们定位第一响应者是谁
    [self.button addTarget:nil action:@selector(pressPrint) forControlEvents:UIControlEventTouchUpInside|UIControlEventTouchUpOutside];
  
   
}

-(void) viewDidAppear:(BOOL)animated
{
    [self.viewD becomeFirstResponder];
    NSLog(@"%@", self.viewD.isFirstResponder);
}



@end
