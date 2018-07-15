//
//  FavoriteList.h
//  InfoFlowApp
//
//  Created by 薛凯 on 2018/7/15.
//  Copyright © 2018年 薛凯. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FavoriteList : NSObject
//获取单例。 似乎ios喜欢使用shared
+(instancetype)sharedFavoriteList;

-(NSArray*)favorites;

-(void)addFavoriteItem:(id)item;

-(void)removeFavoriteItem:(id)item;
@end
