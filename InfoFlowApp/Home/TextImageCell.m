//
//  TextImageCell.m
//  InfoFlowApp
//  文本、图像模板
//  Created by 薛凯 on 2018/7/16.
//  Copyright © 2018年 薛凯. All rights reserved.
//

#import "TextImageCell.h"
#import "JDB4iPhoneGlobal.h"

// 首页cell的上边距
#define HOME_CELL_TOP_MARGIN          20



@implementation TextImageCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        //上边距
        UIView *topMargin=[[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, HOME_CELL_TOP_MARGIN)];
        topMargin.backgroundColor=[UIColor grayColor];
        [self addSubview:topMargin];
        
        UIImageView *headView=[[UIImageView alloc]initWithFrame:CGRectMake(0, HOME_CELL_TOP_MARGIN, 60, 60)];
        UIImage *headImage=[UIImage imageNamed:@"temp_headview"];
        headView.image=headImage;
        [self addSubview:headView];
        
    }
    [self sizeToFit];

    return self;
}

@end
