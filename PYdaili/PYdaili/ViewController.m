//
//  ViewController.m
//  PYdaili
//
//  Created by Apple on 16/7/26.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "RootViewController.h"
@interface ViewController () <RootViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}
- (IBAction)buttonAction:(UIButton *)sender {
    RootViewController *rootVC = [[RootViewController alloc] init];
    rootVC.delegate = self;
    [self presentViewController:rootVC animated:YES completion:nil];
}
- (void)rootViewData {
    NSLog(@"代理已执行");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
