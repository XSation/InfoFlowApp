//
//  FavoriteList.m
//  InfoFlowApp
//  收藏的字体
//  Created by 薛凯 on 2018/7/15.
//  Copyright © 2018年 薛凯. All rights reserved.
//

#import "FavoriteList.h"
@interface FavoriteList()
@property NSMutableArray *favorites;
@end

@implementation FavoriteList
+ (instancetype)sharedFavoriteList{
    static FavoriteList *favoriteList;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        favoriteList=[[FavoriteList alloc]init];
    });
    return favoriteList;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
        self.favorites=[defaults objectForKey:@"favorites"];
        if(!self.favorites){
            self.favorites=[NSMutableArray array];
        }
    }
    return self;
}


- (void)addFavoriteItem:(id)item{
    [_favorites addObject:item];
    [self saveFavorites];
}

- (void)removeFavoriteItem:(id)item{
    BOOL is=[_favorites isKindOfClass:[NSMutableArray class]];
    NSLog(@"%@",is);
    [_favorites removeObject:item];
    [self saveFavorites];
}


-(void)saveFavorites{
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    [defaults setObject:self.favorites forKey:@"favorites"];
    [defaults synchronize];
}
@end

