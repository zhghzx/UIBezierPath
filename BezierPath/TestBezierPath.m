//
//  TestBezierPath.m
//  BezierPath
//
//  Created by zhangxing on 2017/5/19.
//  Copyright © 2017年 zhangxing. All rights reserved.
//

#import "TestBezierPath.h"

@implementation TestBezierPath

- (void)drawRect:(CGRect)rect {
    //创建并且返回一个新的 UIBezierPath 对象
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(50, 50)];
    [path addLineToPoint:CGPointMake(100, 50)];
    [path addLineToPoint:CGPointMake(100, 100)];
    [path addLineToPoint:CGPointMake(50, 100)];
    [[UIColor greenColor] set];
    [path stroke];
    [path fill];
    //通过一个矩形, 创建并且返回一个新的 UIBezierPath 对象
    UIBezierPath *path1 = [UIBezierPath bezierPathWithRect:CGRectMake(150, 50, 50, 50)];
    [path1 stroke];
    //通过一个指定的矩形中的椭圆形, 创建并且返回一个新的 UIBezierPath 对象
    UIBezierPath *path2 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(250, 50, 50, 50)];
    [path2 stroke];
    //根据一个圆角矩形, 创建并且返回一个新的 UIBezierPath 对象
    UIBezierPath *path3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(350, 50, 50, 50) cornerRadius:5];
    [path3 stroke];
    UIBezierPath *path4 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 150, 50, 50) byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(5, 5)];
    [path4 stroke];
    //通过一个圆弧, 创建并且返回一个新的 UIBezierPath 对象
    UIBezierPath *path5 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(175, 175) radius:25 startAngle:0 endAngle:M_PI_2*3 clockwise:YES];
    [path5 addLineToPoint:CGPointMake(225, 225)];
    [path5 stroke];
//    [path5 fill];
    //创建并返回一个新的BezierPath, 这个 BezierPath 的方向是原 BezierPath 的反方向
    UIBezierPath *path6 = [path5 bezierPathByReversingPath];
    CGAffineTransform transform = CGAffineTransformMakeTranslation(100, 0);
    [path6 applyTransform:transform];
    [[UIColor cyanColor] set];
    [path6 addLineToPoint:CGPointMake(225, 225)];
    [path6 stroke];
    
    UIBezierPath *path7 = [UIBezierPath bezierPath];
    [path7 moveToPoint:CGPointMake(50, 250)];
    [path7 addLineToPoint:CGPointMake(100, 250)];
    //在当前子路径中追加一条圆弧
    [path7 addArcWithCenter:CGPointMake(150, 250) radius:50 startAngle:M_PI_2*2 endAngle:M_PI_2 clockwise:NO];
    //在当前 子路经中追加一条 三次贝塞尔曲线
    [path7 addCurveToPoint:CGPointMake(250, 250) controlPoint1:CGPointMake(175, 275) controlPoint2:CGPointMake(225, 300)];
    //在当前 子路经中追加一条 二次贝塞尔曲线
    [path7 addQuadCurveToPoint:CGPointMake(350, 300) controlPoint:CGPointMake(325, 275)];
    path7.lineWidth = 10;
    path7.lineCapStyle = kCGLineCapRound;
    [path7 stroke];
    
    UIBezierPath *p1 = [UIBezierPath bezierPath];
    [p1 moveToPoint:CGPointMake(50, 350)];
    [p1 addLineToPoint:CGPointMake(400, 350)];
    CGFloat dash1[] = {8.0, 4.0};
    [p1 setLineDash:dash1 count:2 phase:0];
    [p1 stroke];
    
    UIBezierPath *p2 = [UIBezierPath bezierPath];
    [p2 moveToPoint:CGPointMake(50, 400)];
    [p2 addLineToPoint:CGPointMake(400, 400)];
    CGFloat dash2[] = {8.0, 4.0, 16.0, 4.0};
    [p2 setLineDash:dash2 count:4 phase:0];
    [p2 stroke];
    
    UIBezierPath *p3 = [UIBezierPath bezierPath];
    [p3 moveToPoint:CGPointMake(50, 450)];
    [p3 addLineToPoint:CGPointMake(400, 450)];
    CGFloat dash3[] = {8.0, 4.0, 16.0, 4.0};
    [p3 setLineDash:dash3 count:4 phase:5];
    [p3 stroke];
}

@end
