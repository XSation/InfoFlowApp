//
//  HomeViewController.m
//  InfoFlowApp
//
//  Created by 薛凯 on 2018/7/14.
//  Copyright © 2018年 薛凯. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem.title=@"首页";
    self.tabBarItem.selectedImage=[UIImage imageNamed:@"ic_tabbar_home_selected"];
    
    UIImage* icon=[UIImage imageNamed:@"ic_tabbar_home_unselected"];
    
//    icon.size=CGSizeMake(10, 10);
    self.tabBarItem.image=[UIImage imageNamed:@"ic_tabbar_home_unselected"];

    UITableView* tableView=[[UITableView alloc]initWithFrame:self.view.frame];
//    self.view.backgroundColor=[UIColor blueColor];
    [self.view addSubview:tableView];
    
    // Do any additional setup after loading the view.
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
