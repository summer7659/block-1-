//
//  SecViewController.h
//  block
//
//  Created by 蔡源泽 on 16/8/10.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecViewController : UIViewController


/**
 先声明block的名字,并确定参数的类型
 */
@property(nonatomic,copy)void (^netViewBlock)(NSString *text);

@end
