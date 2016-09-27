//
//  ChangeBuTitleTool.m
//  block
//
//  Created by apple on 2016/9/27.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import "ChangeBuTitleTool.h"

@implementation ChangeBuTitleTool

+(void)changeBuTitleWithText:(titleBlock)text{
    if (text) {
        text(@"键盘风筝");
    }
}


//+(void)changeBuTitleWithText:(void(^)(NSString *titleText))text{
//    if (text) {
//        text(@"键盘风筝");
//    }
//}

@end
