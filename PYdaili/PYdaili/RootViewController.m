//
//  RootViewController.m
//  PYdaili
//
//  Created by Apple on 16/7/26.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    UIButton *button = [UIButton buttonWithType:(UIButtonTypeSystem)];
    button.frame = CGRectMake(100, 100, 100, 50);
    button.backgroundColor = [UIColor orangeColor];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:(UIControlEventTouchDown)];
    [self.view addSubview:button];

}
- (void)buttonAction:(UIButton *)button {//代理六
    if ([_delegate respondsToSelector:@selector(rootViewData)]) {
        [_delegate rootViewData];
    }
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
