//
//  SettingViewController.m
//  InfoFlowApp
//
//  Created by 薛凯 on 2018/7/16.
//  Copyright © 2018年 薛凯. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem.title=@"设置";
    self.tabBarItem.selectedImage=[UIImage imageNamed:@"ic"];
    
    UIImage* icon=[UIImage imageNamed:@"ic_tabbar_home_unselected"];
    self.tabBarItem.image=[UIImage imageNamed:@"ic_tabbar_discovery_unselected"];
    
    UITableView* tableView=[[UITableView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:tableView];
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
