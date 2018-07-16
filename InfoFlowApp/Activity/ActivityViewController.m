//
//  ActivityViewController.m
//  InfoFlowApp
//
//  Created by 薛凯 on 2018/7/16.
//  Copyright © 2018年 薛凯. All rights reserved.
//

#import "ActivityViewController.h"

@interface ActivityViewController ()
@end

@implementation ActivityViewController
//设置tab
- (instancetype)init{
    self = [super init];
    if (self) {
        self.tabBarItem.title=@"动态";
        self.tabBarItem.selectedImage=[UIImage imageNamed:@"ic_tabbar_activity_selected"];
        self.tabBarItem.image=[UIImage imageNamed:@"ic_tabbar_activity_unselected"];
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
   
    
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
