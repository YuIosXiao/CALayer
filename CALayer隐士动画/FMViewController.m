//
//  FMViewController.m
//  CALayer隐士动画
//
//  Created by qianfeng on 14-10-15.
//  Copyright (c) 2014年 千峰. All rights reserved.
//

#import "FMViewController.h"

@interface FMViewController ()
@property (nonatomic, strong) CALayer *layer;
@end

@implementation FMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CALayer *layer = [CALayer layer];
    layer.bounds = CGRectMake(0, 0, 100, 100);
    layer.backgroundColor = [UIColor redColor].CGColor;
    layer.position = CGPointZero;
    layer.anchorPoint = CGPointZero;
    [self.view.layer addSublayer:layer];
    self.layer = layer;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.layer.backgroundColor = [UIColor blueColor].CGColor;
    [CATransaction begin]; // 开启事务
    [CATransaction setDisableActions:YES];
    
    self.layer.position = CGPointMake(100, 100);
    self.layer.opacity = 0.5;
    
    [CATransaction commit]; // 提交事务
}
@end
