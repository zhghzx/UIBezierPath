//
//  ViewController.m
//  BezierPath
//
//  Created by zhangxing on 2017/5/15.
//  Copyright © 2017年 zhangxing. All rights reserved.
//

#import "ViewController.h"
#import "TestBezierPath.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.frame = CGRectMake(50, 50, 50, 50);
    layer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:layer];
    
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    UIBezierPath *path1 = [UIBezierPath bezierPathWithRect:CGRectMake(150, 50, 50, 50)];
    layer1.path = path1.CGPath;
    layer1.strokeColor = [UIColor redColor].CGColor;
    layer1.fillColor = [UIColor greenColor].CGColor;
    [self.view.layer addSublayer:layer1];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.fromValue = @0;
    animation.toValue = @1;
    animation.duration = 2;
    [layer1 addAnimation:animation forKey:nil];
    
    TestBezierPath *bezier = [[TestBezierPath alloc] initWithFrame:CGRectMake(0, 150, self.view.frame.size.width, 500)];
    [self.view addSubview:bezier];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
