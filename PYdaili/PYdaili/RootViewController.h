//
//  RootViewController.h
//  PYdaili
//
//  Created by Apple on 16/7/26.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>




@protocol RootViewDelegate <NSObject>

- (void)rootViewData;

@end

@interface RootViewController : UIViewController
@property (nonatomic, assign) id<RootViewDelegate>delegate;
@end
