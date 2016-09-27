//
//  ShowBuColor.m
//  block
//
//  Created by 蔡源泽 on 16/8/10.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import "ShowBuColor.h"

@implementation ShowBuColor

+(void)changeRootViewButtonRect:(CGRect)rect blockcompletion:(changeColor)changeColorblock{
    UIColor *temp = [UIColor greenColor];
    changeColorblock(temp);
}

+(void)changeButton:(void(^)(CGRect frame))frame{
    CGRect temp = CGRectMake(90, 300, 90, 90);
    frame(temp);
}

@end
