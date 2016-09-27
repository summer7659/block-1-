//
//  ViewController.m
//  block
//
//  Created by 蔡源泽 on 16/8/9.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
#import "ShowBuColor.h"

#define WeakSelf __weak typeof(self) weakSelf = self;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addButton];
    // Do any additional setup after loading the view, typically from a nib
    //无参数无返回值
    void(^printBlock)() = ^(){
        NSLog(@"no number");
    };
    printBlock();
    printBlock(9);
    
    int mutiplier = 7;
    //定义myblock代码块,返回值是int类型
    int(^myBlock)(int) = ^(int num){
        return num * mutiplier;
    };
    int new = myBlock(3);
    NSLog(@"%d",new);
    
    
    //有参数 没有返回值
    void(^numBlock)(int) = ^(int num){
        NSLog(@"numBlock=%d",num);
    };
    numBlock(3);
    
    //修改外部变量(block 关键字的使用)
    __block int x = 100;
    void(^sumXWithYBlock)(int) = ^(int y){
        x = x + y;
        NSLog(@"new value %d",x);
    };
    sumXWithYBlock(100);
    
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        self.view.backgroundColor = [UIColor redColor];
    });
    
    

}

-(void)dealloc{
    NSLog(@"1");
}

//block回调
-(void)changeMyPhone:(void(^)(void))finishBlock{
    
}


-(void)addButton{
    UIButton *bu = [UIButton buttonWithType:(UIButtonTypeCustom)];
    bu.backgroundColor = [UIColor blueColor];
    bu.frame = CGRectMake(30, 90, 100, 50);
    [self.view addSubview:bu];
    [bu addTarget:self action:@selector(click:) forControlEvents:(UIControlEventTouchUpInside)];
    
    
}

-(void)click:(UIButton *)sender{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(30, 100, 200, 30)];
    [self.view addSubview:label];
    
//    SecViewController *vc = [[SecViewController alloc] init];
//    vc.netViewBlock = ^(NSString *text){
//        label.text = text;
//    };
//    [self.navigationController pushViewController:vc animated:YES];
    
    CGRect temp = CGRectZero;
    [ShowBuColor changeRootViewButtonRect:temp blockcompletion:^(UIColor *colorEnum) {
        sender.backgroundColor = colorEnum;
    }];
    
    [ChangeBuTitleTool changeBuTitleWithText:^(NSString *titleText) {
        [sender setTitle:titleText forState:(UIControlStateNormal)];
    }];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
