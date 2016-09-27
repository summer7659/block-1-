//
//  ChangeBuTitleTool.h
//  block
//
//  Created by apple on 2016/9/27.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^titleBlock)(NSString *titleText);

@interface ChangeBuTitleTool : NSObject


+(void)changeBuTitleWithText:(titleBlock)text;

//+(void)changeBuTitleWithText:(void(^)(NSString *titleText))text;

@end
