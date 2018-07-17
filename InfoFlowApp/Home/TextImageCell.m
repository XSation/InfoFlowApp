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
#define HOME_CELL_TOP_MARGIN 20
// headview宽高
#define HEAD_VIEW_WIDTH 60



@interface TextImageCell(){
    
}
@property (weak, nonatomic) IBOutlet UILabel *detailText;
@property (weak, nonatomic) IBOutlet UIImageView *headView;
@property (weak, nonatomic) IBOutlet UILabel *nickName;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@end

@implementation TextImageCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (NSInteger)cellHeight{
    return HEAD_VIEW_WIDTH;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
    NSLog(@"xxx");
    
    // Configure the view for the selected state
}


- (void)setData:(NSInteger)index{
    if(index>4){
        self.image.hidden=YES;
//        self.imageHeight.constant=0;
    }else{
        self.image.hidden=NO;
//        self.imageHeight.constant=78;

    }
    self.nickName.text=[NSString stringWithFormat:@"资讯视频 %d",(int)index];
    self.headView.image=[UIImage imageNamed:@"temp_headview"];
    self.image.image=[UIImage imageNamed:@"temp_image"];
    self.detailText.text=@"ababcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcaababcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabccbcabcabcc";
}

//- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
//
//    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//    if(self){
//        CGSize frameSize=self.frame.size;
//        self.backgroundColor=[UIColor darkGrayColor];
//        //放置内容的根View
//        UIView *rootView=[[UIView alloc]initWithFrame:CGRectMake(0, HOME_CELL_TOP_MARGIN, frameSize.width,frameSize.height- HOME_CELL_TOP_MARGIN )];
//        rootView.backgroundColor=[UIColor whiteColor];
//        [self addSubview:rootView];
//
//
//        //头像
//        UIImageView *headView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, HEAD_VIEW_WIDTH, HEAD_VIEW_WIDTH)];
//        UIImage *headImage=[UIImage imageNamed:@"temp_headview"];
//        headView.image=headImage;
//        [rootView addSubview:headView];
//
//        //昵称
//        UILabel *nickName=[[UILabel alloc]initWithFrame:CGRectMake(HEAD_VIEW_WIDTH+10, 0, SCREEN_WIDTH, 30)];
//
//        [nickName setText:@"资讯短视频精选推荐"];
//        [rootView addSubview:nickName];
//
//        //个人简介
//        UILabel *introduce=[[UILabel alloc]initWithFrame:CGRectMake(HEAD_VIEW_WIDTH+10, 20, SCREEN_WIDTH, 30)];
//        [introduce setText:@"根据你关注的内容推荐"];
//        [rootView addSubview:introduce];
//
//
//        //文本
//        UILabel *content=[[UILabel alloc]initWithFrame:CGRectMake(0, HEAD_VIEW_WIDTH, SCREEN_WIDTH-HEAD_VIEW_WIDTH, 100)];
//        [content setText:@"　旅客曹先生在辽宁大连周水子国际机场出站时,不慎把钱包掉在了地上。不可思议的是,跟在身后的大妈并没有提醒他,而是一个箭步冲上前,把钱包捡走并藏在了随身携带的行李中。她没有想到的是,监控把现场情况清楚地记录了下来。\n生活就是:每天工作、吃喝玩乐、还有睡觉!所以,每天能更好的生活才是我们想要的!在这个物质社会,钱就是我们生活的根本,有钱过好日子,没钱过苦日子,这是不争的事实!所以金钱对我们来说真的很重要,但对有的人来说,根本不重要!比如马云!他亲口说过对钱不感兴趣!这不,他又在支付宝发几个亿的红包了!我们可以利用他的这次活动改善一下自己的生活!"];
//        content.numberOfLines=5;
//        [rootView addSubview:content];
//
//
//        //图片(应该是一个容器，里面根据图片数量显示)
//        UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 300, SCREEN_WIDTH, 100)];
//        imageView.image=[UIImage imageNamed:@"temp_image"];
////        [rootView addSubview:imageView];
//
//    }
//    [self sizeToFit];
//
//    return self;
//}

@end
