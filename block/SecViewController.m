//
//  SecViewController.m
//  block
//
//  Created by 蔡源泽 on 16/8/10.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import "SecViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *bu = [UIButton buttonWithType:(UIButtonTypeCustom)];
    bu.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:bu];
    [bu addTarget:self action:@selector(back) forControlEvents:(UIControlEventTouchUpInside)];
    bu.frame = CGRectMake(30, 90, 90, 90);
}

-(void)back{
    self.netViewBlock(@"你好");
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
