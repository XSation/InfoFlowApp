//
//  RootTabBarControllerViewController.m
//  InfoFlowApp
//
//  Created by 薛凯 on 2018/7/14.
//  Copyright © 2018年 薛凯. All rights reserved.
//

#import "RootTabBarControllerViewController.h"
#import "HomeViewController.h"

@interface RootTabBarControllerViewController ()

@end

@implementation RootTabBarControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabs];
}

#pragma mark - 设置tabs

//设置tabs，后期可根据网络接口来设置
-(void)setupTabs{
    UIViewController *c2=[[UIViewController alloc]init];
    c2.tabBarItem.title=@"c2";
    self.viewControllers=@[[[HomeViewController alloc]init],
                           c2];
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
