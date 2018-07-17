//
//  HomeViewController.m
//  InfoFlowApp
//
//  Created by 薛凯 on 2018/7/14.
//  Copyright © 2018年 薛凯. All rights reserved.
//

#import "HomeViewController.h"
#import "TextImageCell.h"


@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>{
     UITableView *mHomeTableView;

}

@end

@implementation HomeViewController

//设置tab
- (instancetype)init{
    self = [super init];
    if (self) {
        self.tabBarItem.title=@"首页";
        self.tabBarItem.selectedImage=[UIImage imageNamed:@"ic_tabbar_home_selected"];
        self.tabBarItem.image=[UIImage imageNamed:@"ic_tabbar_home_unselected"];
    }
    
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //请求网络数据，请求成功后
    [self initHomeContentView];
    
}

//初始化首页的视图
- (void)initHomeContentView{
    
    
    //顶部按钮
    UIButton *menuBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //    [menuBtn setFrame:CGRectMake(0, 0, 30, 30)];
    //    [menuBtn setImage:[UIImage imageNamed:@"ware_more.png"] forState:UIControlStateNormal];
    //    [menuBtn addTarget:self action:@selector(showMenuDialog) forControlEvents:UIControlEventTouchUpInside];
    //    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:menuBtn];
    //    UIButton *shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //    [shareBtn setFrame:CGRectMake(0, 0, 30, 30)];
    //    [shareBtn setImage:[UIImage imageNamed:@"rank_share"] forState:UIControlStateNormal];
    //    [shareBtn addTarget:self action:@selector(shareBtnClick) forControlEvents:UIControlEventTouchUpInside];
    //    UIBarButtonItem *shareItem = [[UIBarButtonItem alloc] initWithCustomView:shareBtn];
    //    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects: rightItem,shareItem,nil]];
    //初始化聊天界面
   
    CGRect tableViewFrame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height );
    mHomeTableView = [[UITableView alloc] initWithFrame:tableViewFrame style:UITableViewStylePlain];
    mHomeTableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    mHomeTableView.dataSource = self;
    mHomeTableView.delegate = self;

    [mHomeTableView registerNib:[UINib nibWithNibName:@"TextImageDemo" bundle:nil] forCellReuseIdentifier:@"textImage"];
//    mHomeTableView.backgroundColor = [UIColor colorWithHex:@"#f0f2f5"];
    mHomeTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:mHomeTableView];
    //背景说明
//    newguideview = [[JDXiaoBingNewGuideView alloc]initWithFrame:CGRectMake(0, (m_chatTableView.height-177)/2, m_chatTableView.width, 177)];
//    newguideview.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
//    newguideview.separatorStyle = UITableViewCellSeparatorStyleNone;
//    [m_chatTableView addSubview:newguideview];
//    newguideview.hidden = YES;
//    // TableView - 点击
//    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] init];
//    [tapGestureRecognizer addTarget:self action:@selector(tableViewTap)];
//    [m_chatTableView addGestureRecognizer:tapGestureRecognizer];
//    [newguideview addGestureRecognizer:tapGestureRecognizer];
//    tapGestureRecognizer.delegate = (id<UIGestureRecognizerDelegate>)self;
//
//    CGRect inputFrame = CGRectZero;
//    if(JDUtils.checkiOS() < 70)
//    {
//        inputFrame = CGRectMake(0, self.view.height - 45, self.view.width, 45);
//
//    } else {
//        if (iPhoneX)
//        {
//            inputFrame = CGRectMake(0, SCREEN_HEIGHT - 45 - statusBarHeightOffset - 34, self.view.width, 45 + 34);
//
//        }
//        else
//        {
//            inputFrame = CGRectMake(0, SCREEN_HEIGHT - 45 - statusBarHeightOffset, self.view.width, 45);
//        }
//
//
//    }
//    // 快捷菜单区域
//    m_inputMenuView = [[UIView alloc] initWithFrame:inputFrame];
//    [m_inputMenuView setBackgroundColor:[UIColor whiteColor]];
//    m_inputMenuView.hidden = NO;
//    [self.view addSubview:m_inputMenuView];
//
//    // 文字输入区域
//    m_inputMessageView = [[UIView alloc] initWithFrame:inputFrame];
//    [m_inputMessageView setBackgroundColor:[UIColor whiteColor]];
//    [self.view addSubview:m_inputMessageView];
//    m_inputMessageView.hidden = YES;
//
//    // 4.3 添加底部描边
//    UIView *topLine = [[UIView alloc] initWithFrame:CGRectMake(0, 0, inputFrame.size.width, 0.5)];
//    topLine.backgroundColor = [UIColor colorWithHex:@"#bfbfbf"];
//    [m_inputMessageView addSubview:topLine];
//
//    sepLine2 = [[UIView alloc] initWithFrame:CGRectMake(45, 0, 0.5, 45)];
//    sepLine2.backgroundColor = [UIColor colorWithHex:@"#e0e0e0"];
//    [m_inputMessageView addSubview:sepLine2];
//
//    UIImageView *menuIconImage = [[UIImageView alloc] initWithFrame:CGRectMake(12, 16, 20, 12)];
//    [menuIconImage setImage:[UIImage imageNamed:@"function_icon.png"]];
//    m_inputfieldSwitchView = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 45, 45)];
//    m_inputfieldSwitchView.userInteractionEnabled = YES;
//    [m_inputfieldSwitchView addSubview:menuIconImage];
//    [m_inputfieldSwitchView addTarget:self action:@selector(keyboardMenuExchangeAction) forControlEvents:UIControlEventTouchUpInside];
//    [m_inputMessageView addSubview:m_inputfieldSwitchView];
//
//    UIImageView *keyboard_down = [[UIImageView alloc] initWithFrame:CGRectMake(22 - 2.5, 31.5, 5, 2.5)];
//    [keyboard_down setImage:[UIImage imageNamed:@"keyboard_down.png"]];
//    [m_inputfieldSwitchView addSubview:keyboard_down];
//    // 文字输入框
//    textViewBg = [[UIImageView alloc] initWithFrame:CGRectMake(55, 6.5, self.view.width - 100, 32)];
//    UIEdgeInsets edgeInsets = UIEdgeInsetsMake(3, 5, 4, 5);
//    [textViewBg setImage:[[UIImage imageNamed:@"xiaobing_new_textfield_bg"] resizableImageWithCapInsets:edgeInsets]];
//    textViewBg.userInteractionEnabled = YES;
//    [m_inputMessageView addSubview:textViewBg];
//
//    m_messageTextField = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, textViewBg.width, textViewBg.height)];
//    [m_messageTextField setBackgroundColor:[UIColor clearColor]];
//    [m_messageTextField setFont:[UIFont systemFontOfSize:16]];
//    m_messageTextField.returnKeyType = UIReturnKeySend;
//    m_messageTextField.delegate = (id<UITextViewDelegate>)self;
//    m_messageTextField.bounces = NO;
//    m_messageTextField.showsVerticalScrollIndicator = NO;
//    [textViewBg addSubview:m_messageTextField];
//
//    UIButton *richBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [richBtn setFrame:CGRectMake(textViewBg.right , 0, m_inputMenuView.width-textViewBg.right, 45)];
//    richBtn.backgroundColor = [UIColor clearColor];
//    richBtn.centerY = textViewBg.centerY;
//    [richBtn setImage:[UIImage imageNamed:@"xiaobing_plus_icon"] forState:UIControlStateNormal];
//    [richBtn addTarget:self action:@selector(richBtnAction) forControlEvents:UIControlEventTouchUpInside];
//    [m_inputMessageView addSubview:richBtn];
//
//    m_XBRichPad = [[JDXiaoBingRichPad alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height, self.view.width, 336/2)];
//    m_XBRichPad.delegate = (id<JDXiaoBingRichPadDelegate>)self;
//    [self.view addSubview:m_XBRichPad];
//
//    //[self setXBMenuViewInfo:[[JDXBUtils sharedJDXBUtils] getDefaultXBMenuArray]];
//
//    [requestManager getXBMenuInfo];
//
//    //创建菜
//    [self renderMenuDialog];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadSpecialView:) name:UIApplicationWillChangeStatusBarFrameNotification object:nil];
//    
//    //获取历史记录
//    [self getChatHistoryMessages];
//
//    //获取小冰服务端配置信息
//    [requestManager getXiaoBingConfig];
//
//    // 获取小冰问候语
//    [requestManager sendXBSignal];
//    self.title = @"小冰";
//    if (!m_xiaoBingProfile || !JDUtils.validateString([m_xiaoBingProfile objectForKey:@"nickName"])) {
//        //获取小冰信息
//        [requestManager getXiaoBingProfileConfig];
//    } else {
//        NSString *nickName = [m_xiaoBingProfile objectForKey:@"nickName"];
//        if(JDUtils.validateString(nickName))
//        {
//            self.title = nickName;
//        }
//
//        [requestManager doReceiveMessage];
//    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return [m_messageArray count];
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    JDXiaoBingChatCell *chatCell = [tableView dequeueReusableCellWithIdentifier:@"JD_XIAOBING_CHAT"];
    TextImageCell *chatCell = [tableView dequeueReusableCellWithIdentifier:@"textImage"];

    [chatCell setData:indexPath.row];

//        chatCell = [[TextImageCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TEXT_IMAGE"];
   
//
//    NSMutableDictionary *msgDic = [m_messageArray objectAtIndex:indexPath.row];
//    NSString *msgType = [msgDic objectForKey:@"type"];
//    [chatCell hideAll];
//    chatCell.type = [msgType intValue];
//    chatCell.delegate = self;
//
//    [self configChatIcon:msgType cell:chatCell];
//
//    // 时间戳
//    NSMutableDictionary *timetickDic = [m_timetickArray objectAtIndex:indexPath.row];
//    chatCell.m_isTimetickShow = [[timetickDic objectForKey:@"isTimetickShow"] boolValue];
//    chatCell.m_msgTimetick = [[timetickDic objectForKey:@"time"] longLongValue];
//
//
//    if ([msgType isEqualToString:@"1"]) { // --------------------->>> 商品 Card
//
//        NSArray *skuArray = [msgDic objectForKey:@"detail"];
//        if(! JDUtils.validateArray(skuArray)){
//            ZNLog(@"！！！没有商品信息或商品信息错误 ！！！");
//            return chatCell;
//        }
//
//        //单个商品消息
//        chatCell.m_singleSkuView.hidden = NO;
//        NSDictionary *skuDic = [skuArray objectAtIndex:0];
//        chatCell.m_singleSkuView.m_skuImageView.tag = indexPath.row;
//        chatCell.m_singleSkuView.m_skuDesc.text = [skuDic objectForKey:@"name"];
//        // jdPrice 字段的类型还不固定。。可能为double或者是string。。
//        if([[skuDic objectForKey:@"jdPrice"] isKindOfClass:[NSString class]])
//        {
//            NSString *priceString = [skuDic objectForKey:@"jdPrice"];
//            NSString *jdPrice = [NSString stringWithFormat:@"%.2f", [priceString floatValue]];
//            if ([priceString hasPrefix:@"￥"]) {
//                chatCell.m_singleSkuView.m_skuPrice.text = priceString;
//            } else {
//                chatCell.m_singleSkuView.m_skuPrice.text = [NSString stringWithFormat:@"￥%@", jdPrice];
//            }
//        } else {
//            NSString *jdPrice = [NSString stringWithFormat:@"%.2f", [[skuDic objectForKey:@"jdPrice"] floatValue]];
//            chatCell.m_singleSkuView.m_skuPrice.text = [NSString stringWithFormat:@"￥%@", jdPrice];
//        }
//
//        NSString *imgUrl = ([skuDic objectForKey:@"newpath"]) ? @"newpath" : @"bigpath";
//        [chatCell.m_singleSkuView.m_skuImageView setImageWithURL:[NSURL URLWithString:[skuDic objectForKey:imgUrl]]
//                                                placeholderImage:[UIImage imageNamed:@"xiaobing_queshengtu"]];
//
//    } else if ([msgType isEqualToString:@"8"]) { // --------------------->>> 优惠券 Card
//
//        NSArray *shopCoupons = [msgDic objectForKey:@"detail"];
//
//        chatCell.m_couponView.tag = indexPath.row;
//        chatCell.m_couponView.hidden = NO;
//        [chatCell.m_couponView setCouponView:shopCoupons];
//
//    } else if ([msgType isEqualToString:@"2"]) { // --------------------->>> 活动 Card
//
//        chatCell.m_xiaoBingView.hidden = NO;
//        chatCell.m_xiaoBingView.m_activityView.tag = indexPath.row;
//        chatCell.m_xiaoBingView.m_messageLabel.hidden = YES;
//        chatCell.m_xiaoBingView.m_activityView.hidden = NO;
//
//        NSString *activityImgUrl = [[JDXBUtils sharedJDXBUtils] getActivityUrl:msgDic];
//
//        [self setWebImage:indexPath cell:chatCell withUrl:activityImgUrl];
//
//    } else if ([msgType isEqualToString:@"4"]) { // --------------------->>> 小冰文字消息
//
//        chatCell.m_xiaoBingView.hidden = NO;
//        chatCell.m_xiaoBingView.m_activityView.tag = indexPath.row;
//        chatCell.m_xiaoBingView.m_messageLabel.hidden = NO;
//        chatCell.m_xiaoBingView.m_activityView.hidden = YES;
//        chatCell.m_xiaoBingView.m_messageLabel.text = nil;
//        chatCell.m_xiaoBingView.m_msgTime = (NSUInteger)[msgDic objectForKey:@"time"];
//        chatCell.m_xiaoBingView.m_shareUrl = @"";
//        NSString *xbText = [msgDic objectForKey:@"text"];
//        UIColor *linkColor = [UIColor blueColor];
//        if( JDUtils.validateString([msgDic objectForKey:@"shareUrl"]) ){
//            chatCell.m_xiaoBingView.m_shareUrl = [msgDic objectForKey:@"shareUrl"];
//            chatCell.m_xiaoBingView.m_shareIconUrl = [msgDic objectForKey:@"iconUrl"];
//            // 匹配分享的关键字
//            NSRange  shareTxtRange = [xbText rangeOfString:@"分享给小伙伴"];
//            if( shareTxtRange.length ){
//                linkColor = [UIColor colorWithHex:@"#e63085"];
//            }
//        }
//
//        NSMutableDictionary *mutableLinkAttributes = [NSMutableDictionary dictionary];
//        [mutableLinkAttributes setValue:(id)[linkColor CGColor] forKey:(NSString*)kCTForegroundColorAttributeName];
//        [mutableLinkAttributes setValue:[NSNumber numberWithBool:YES] forKey:(NSString *)kCTUnderlineStyleAttributeName];
//        chatCell.m_xiaoBingView.m_messageLabel.linkAttributes = nil;
//        chatCell.m_xiaoBingView.m_messageLabel.linkAttributes = mutableLinkAttributes;
//        chatCell.m_xiaoBingView.m_messageLabel.text = xbText;
//
//    } else if ([msgType isEqualToString:@"5"]) { // --------------------->>> 小冰图片消息
//
//        chatCell.m_xiaoBingView.hidden = NO;
//        chatCell.m_xiaoBingView.m_activityView.tag = indexPath.row;
//        chatCell.m_xiaoBingView.m_activityView.image = nil;
//        chatCell.m_xiaoBingView.m_messageLabel.hidden = YES;
//        chatCell.m_xiaoBingView.m_activityView.hidden = NO;
//
//        NSString *imageUrlKey = ([msgDic objectForKey:@"thumbnail_url"]) ? @"thumbnail_url" : @"image_url";
//        NSString *imageUrl = [msgDic objectForKey:imageUrlKey];
//        chatCell.m_xiaoBingView.m_imageUrl = imageUrl;
//
//        [self setWebImage:indexPath cell:chatCell withUrl:imageUrl];
//
//    } else if ([msgType isEqualToString:@"3"]) { // --------------------->>> 店铺 card
//
//        chatCell.m_shopView.hidden = NO;
//        chatCell.m_shopView.m_shopImageView.tag = indexPath.row;
//
//        NSArray *shopArr = [msgDic objectForKey:@"detail"];
//        if(!JDUtils.validateArray(shopArr)){
//            ZNLog(@"!!!shopArr is NULL or unvalid!!!");
//            return chatCell;
//        }
//
//        NSDictionary *shopDic = [shopArr objectAtIndex:0];
//        [chatCell.m_shopView.m_shopTitle setText:[shopDic objectForKey:@"shopName"]];
//        NSString *shopImgUrl = [shopDic objectForKey:@"logoUrl"];
//        if (shopImgUrl) {
//            [chatCell.m_shopView.m_shopImageView setImageWithURL:[NSURL URLWithString:shopImgUrl]
//                                                placeholderImage:[UIImage imageNamed:@"xiaobing_queshengtu"]];
//        } else {
//            chatCell.m_shopView.m_shopImageView.image = [UIImage imageNamed:@"xiaobing_queshengtu"];
//        }
//
//        // 新增类型
//        chatCell.m_shopView.m_hasNew = (![shopDic objectForKey:@"newNum"]) ? NO : YES;
//        chatCell.m_shopView.m_hasCoupon = (![shopDic objectForKey:@"hasCoupon"]) ? NO : YES;
//        // 自营店铺没有评分
//        if( [shopDic objectForKey:@"score"] ){
//            chatCell.m_shopView.m_is3rdShop = YES;
//            chatCell.m_shopView.m_score = [[shopDic objectForKey:@"score"] floatValue];
//        }else {
//            chatCell.m_shopView.m_is3rdShop = NO;
//        }
//        chatCell.m_shopView.m_followCount = [[shopDic objectForKey:@"followCount"] intValue];
//
//    } else if ([msgType isEqualToString:USER_MESSAGE_TYPE]) { // --------------------->>> 用户输入的消息
//        [chatCell.m_userView clearCellData];
//        chatCell.m_userView.hidden = NO;
//        if ([[msgDic objectForKey:@"isSending"] boolValue]) {
//            [chatCell.m_userView.m_indicatorView startAnimating];
//            [self performSelector:@selector(usrMsgTimeoutAction:) withObject:(id)[NSNumber numberWithInteger:indexPath.row]  afterDelay:USER_MSG_TIMEOUT];
//        } else {
//            [chatCell.m_userView.m_indicatorView stopAnimating];
//        }
//
//        chatCell.m_userView.m_rowIndex = indexPath.row;
//        NSString *msg = [msgDic objectForKey:@"text"];
//        if(JDUtils.validateString(msg)){
//            // 文字消息
//            [chatCell.m_userView.m_messageLabel setText:msg];
//        } else {
//            // 相册
//            NSString *imageStream = [msgDic objectForKey:@"image"];
//            NSString *imageBase64 = imageStream;
//            NSData *data = JDUtils.base64decodeString(imageBase64);
//            chatCell.m_userView.m_messageImage.image = [UIImage imageWithData:data];
//        }
//
//        BOOL isSuccess = [[msgDic objectForKey:@"state"] boolValue];
//        [chatCell.m_userView.m_messageState setHidden:isSuccess];
//
//    }
    
    return chatCell;
}

//设置item数据
- (void) configChatIcon:(NSString *)msgType cell:(UITableViewCell *) chatCell
{
//    if( [[JDXBUtils sharedJDXBUtils] isUserMsg:msgType] ){
//
//        // 设置用户头像
//        /*
//         返回值类型：NSDictionary
//         返回值key值：
//         @“userPin”     NSString PIN
//         @"userName"    NSString 用户名
//         @"nickName"    NSString 昵称
//         @"email"       NSString 邮箱
//         @"hasPlus"     NSNumber YES PLUS会员 NO 非PLUS会员
//         @"imgUrl"      NSString 头像URL
//         @"userSex"     NSNumber 0男 1女 2保密
//         @"levelStr"    NSString 等级名
//         */
//
//        NSDictionary *userInfo = [JDRouter openURL:@"router://JDMyJdModule/getUserInfo"
//                                               arg:nil
//                                             error:nil
//                                        completion:^(id  _Nullable object) {}];
//
//        NSString *userImgUrl = nil;
//        if (userInfo && [userInfo objectForKey:@"imgUrl"]) {
//            userImgUrl = [userInfo objectForKey:@"imgUrl"];
//        }
//        UIImage *userIconDefaul = [UIImage imageNamed:@"xiaobing_user_default_icon"];
//
//        [chatCell.m_userImg setImageWithURL:[NSURL URLWithString:userImgUrl] placeholderImage:userIconDefaul];
//
//        chatCell.m_userImg.hidden = NO;
//
//    } else {
//        // 设置小冰头像
//        UIImage *XBIconDefault = [UIImage imageNamed:@"xiaobing_new_default_icon"];
//        NSString *XBIconUrl = [m_xiaoBingProfile objectForKey:@"image"];
//
//        [chatCell.m_xiaobingImg setImageWithURL:[NSURL URLWithString:XBIconUrl] placeholderImage:XBIconDefault];
//
//        chatCell.m_xiaobingImg.hidden = NO;
//    }
//
//}
//
//- (void) setWebImage:(NSIndexPath *)indexPath cell:(JDXiaoBingChatCell*)forCell withUrl:(NSString *)imageUrl
//{
//    if(! JDUtils.validateString(imageUrl))
//        return;
//
//    UIImage *cacheImage = [[SDImageCache sharedImageCache] imageFromKey:imageUrl];
//
//    if(cacheImage){
//        forCell.m_xiaoBingView.m_activityView.image = cacheImage;
//        return;
//    }
//
//    __block JDXiaoBingChatViewController *weakSelf = self;
//    __block JDXiaoBingChatCell *weakCell = forCell;
//    [forCell.m_xiaoBingView.m_activityView
//     setImageWithURL:[NSURL URLWithString:imageUrl]
//     placeholderImage:[UIImage imageNamed:@"xiaobing_placeholder_150x150"]
//     success:^(UIImage *image) {
//         if( !weakSelf || !weakCell || !image ) {
//             return;
//         }
//
//         if(weakCell.m_xiaoBingView){
//             weakCell.m_xiaoBingView.m_activityView.image = image;
//         }
//
//         // Fix 4.3.0 release crash bug Begin
//         // 薅羊毛场景下，多次薅羊毛，图片未加载出的情况上下连续滑动， reloadData 多次会存在weakself被释放的情况
//         if ( weakSelf->m_chatTableView
//             && [weakSelf->m_chatTableView respondsToSelector:@selector(cellForRowAtIndexPath:)] ) {
//
//             UITableViewCell *cell = [weakSelf->m_chatTableView cellForRowAtIndexPath:indexPath];
//
//             if (cell) {
//                 [weakSelf->m_chatTableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationNone];
//                 if([weakSelf->m_chatTableView numberOfRowsInSection:0]-1 == indexPath.row)
//                     [weakSelf scrollToBottom:NO];
//             }
//         }
//     }
//     failure:^(NSError *error) {} ];
}

#pragma mark - UITableViewDelegate
//设置cell高度
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    NSMutableDictionary *msgDic = [m_messageArray objectAtIndex:indexPath.row];
//    NSString *msgType = [msgDic objectForKey:@"type"];
//    CGFloat height = 0;
//
//    if([m_messageArray count] > [m_timetickArray count]){
//        for(NSUInteger i = [m_timetickArray count]; i < [m_messageArray count]; i++){
//            NSMutableDictionary *addDic = [[NSMutableDictionary alloc] init];
//            [addDic setObject:[[m_messageArray objectAtIndex:i] objectForKey:@"time"] forKey:@"time"];
//            [addDic setObject:[NSNumber numberWithBool:NO] forKey:@"isTimetickShow"];
//            [self checkTimetick:addDic];
//            [m_timetickArray addObject:addDic];
//        }
//    }
//
//    NSMutableDictionary *timetickDic = [m_timetickArray objectAtIndex:indexPath.row];
//
//    if ([msgType isEqualToString:@"1"]) { // --------------------->>> 商品 Card
//
//        height = 82;
//
//    } else if([msgType isEqualToString:@"8"]) { // --------------------->>> 优惠券 Card
//
//        height = kScaleNum(156/2)+12;
//
//    } else if ([msgType isEqualToString:@"2"]) { // --------------------->>> 活动 Card
//
//        // 默认占位图高度
//        height = kScaleNum(139/2) + 12;
//
//        // 下载后的图片高度
//        NSString* activeUrl = [[JDXBUtils sharedJDXBUtils] getActivityUrl:msgDic];
//        CGSize cacheSize = [[JDXBUtils sharedJDXBUtils] cacheImageSizeByURL:activeUrl];
//
//        if( !CGSizeEqualToSize(cacheSize, CGSizeZero) ){
//            height = cacheSize.height/2;
//            CGFloat width = cacheSize.width/2;
//            // 图片width不能超过头像边缘
//            if(width > OSD_MAX_XBIMG_MSG_WIDTH){
//                height = OSD_MAX_XBIMG_MSG_WIDTH*height/width;
//            }
//
//            height = height + 12;
//        }
//
//    } else if ([msgType isEqualToString:@"4"]) { // --------------------->>> 小冰 文字消息
//
//        NSString *msg = [msgDic objectForKey:@"text"];
//        CGSize size = [msg sizeWithFont:[UIFont systemFontOfSize:15] constrainedToSize:CGSizeMake(SCREEN_WIDTH - 137, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
//        height = size.height + 26;
//
//    } else if ([msgType isEqualToString:@"5"]){ // --------------------->>> 小冰 图片消息
//
//        // 占位图高度
//        height = 100+12;
//        // 下载后的图片高度
//        NSString *imageUrlKey = ([msgDic objectForKey:@"thumbnail_url"]) ? @"thumbnail_url" : @"image_url";
//        NSString *imageUrl = [msgDic objectForKey:imageUrlKey];
//        CGSize cacheSize = [[JDXBUtils sharedJDXBUtils] cacheImageSizeByURL:imageUrl];
//
//        if( !CGSizeEqualToSize(cacheSize, CGSizeZero) ){
//            height = cacheSize.height/2;
//            CGFloat width = cacheSize.width/2;
//            // 图片width不能超过头像边缘
//            if(width > OSD_MAX_XBIMG_MSG_WIDTH){
//                height = OSD_MAX_XBIMG_MSG_WIDTH*height/width;
//            }
//
//            height = height + 12;
//        }
//
//    } else if ([msgType isEqualToString:@"3"]) { // --------------------->>> 店铺 card
//
//        // shop, 自营店铺没有评分，需要调整siz
//        height = 160;
//
//        NSArray *shopArr = [[m_messageArray objectAtIndex:indexPath.row] objectForKey:@"detail"];
//        if ( JDUtils.validateArray(shopArr) ) {
//            NSDictionary *shopDic = [shopArr objectAtIndex:0];
//            // 自营店铺没有评分
//            if(![shopDic objectForKey:@"score"]){
//                height = height - 20;
//            }
//        }
//
//    } else if ([msgType isEqualToString:USER_MESSAGE_TYPE]) { // --------------------->>> 用户消息
//
//        NSString *msg = [msgDic objectForKey:@"text"];
//        CGSize size = [msg sizeWithFont:[UIFont systemFontOfSize:15] constrainedToSize:CGSizeMake(SCREEN_WIDTH-106-31, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
//        height = ceilf(size.height)+26;
//
//        // 图片消息
//        if( !JDUtils.validateString(msg) ){
//            UIImage *usrImg = nil;
//            NSString *imgStr = [msgDic objectForKey:@"image"];
//            NSData *imgData = JDUtils.base64decodeString(imgStr);
//            usrImg = [UIImage imageWithData:imgData];
//
//            height = usrImg.size.height + 12;
//        }
//    }
//
//    if([[timetickDic objectForKey:@"isTimetickShow"] boolValue]){
//        height += 30;
//    }
//    TextImageCell *cell=[tableView cellForRowAtIndexPath:indexPath];
//    return 300;
//    return height + 20;
//}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
//    [self hideAllMenus];
//    [self hideRichPad];
//    if(isKeyboardPop)
//    {
//        [m_messageTextField resignFirstResponder];
//        [[NSNotificationCenter defaultCenter] postNotificationName:UIKeyboardWillHideNotification object:nil];
//    }
}

- (void)showRegisterWarningDialog:(NSString *)msg
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alertView show];
}


@end
