//
//  RootTabBarControllerViewController.m
//  InfoFlowApp
//
//  Created by 薛凯 on 2018/7/14.
//  Copyright © 2018年 薛凯. All rights reserved.
//

#import "RootTabBarControllerViewController.h"
#import "HomeViewController.h"
#import "ActivityViewController.h"

@interface RootTabBarControllerViewController ()

@end

@implementation RootTabBarControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabs];
}

#pragma mark - 设置tabs

//设置tabs
-(void)setupTabs{
    self.viewControllers=@[[[HomeViewController alloc]init],
                           [[ActivityViewController alloc]init]];
}

@end
