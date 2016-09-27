//
//  ShowBuColor.h
//  block
//
//  Created by 蔡源泽 on 16/8/10.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^changeColor)(UIColor *colorEnum);

@interface ShowBuColor : NSObject

+(void)changeRootViewButtonRect:(CGRect)rect blockcompletion:(changeColor)changeColorblock;

+(void)changeButton:(void(^)(CGRect frame))frame;

@end
