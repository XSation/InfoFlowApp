//
//  JDB4iPhoneGlobal.h
//  Pods
//
//  Created by wangjianping on 2017/6/22.
//
//

#ifndef JDB4iPhoneGlobal_h
#define JDB4iPhoneGlobal_h



#ifndef weakify
#ifdef DEBUG
#if __has_feature(objc_arc)
#define weakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
#endif
#else
#if __has_feature(objc_arc)
#define weakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) try{} @finally{} {} __block __typeof__(object) block##_##object = object;
#endif
#endif
#endif

#ifndef strongify
#ifdef DEBUG
#if __has_feature(objc_arc)
#define strongify(object) autoreleasepool{} __typeof__(object) object = weak##_##object;
#else
#define strongify(object) autoreleasepool{} __typeof__(object) object = block##_##object;
#endif
#else
#if __has_feature(objc_arc)
#define strongify(object) try{} @finally{} __typeof__(object) object = weak##_##object;
#else
#define strongify(object) try{} @finally{} __typeof__(object) object = block##_##object;
#endif
#endif
#endif


// 统一释放宏定义
// 特殊情况，设置了delegate, datasource的对象，释放时必须置nil，否则会引起想不到的情况
// 比如iOS7，当一viewcontroller将要消失时，滚了scroll view，会引起崩溃的问题
#define JD_RELEASE_SAFELY(__POINTER) { if ([__POINTER respondsToSelector:@selector(setDelegate:)]) {\
[__POINTER performSelector:@selector(setDelegate:) withObject:nil];\
} \
if ([__POINTER respondsToSelector:@selector(setDataSource:)]) {\
[__POINTER performSelector:@selector(setDataSource:) withObject:nil];\
} \
if (__POINTER) { \
[__POINTER release]; __POINTER = nil; \
}}

#define iPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone6_Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size)) : NO)
#define iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)


// 根据屏幕缩放比例，将像素转换成点
#define POINTS_FROM_PIXELS(__PIXELS) (__PIXELS / [[UIScreen mainScreen] scale])
#define ONE_PIXEL POINTS_FROM_PIXELS(1.0)

// iPhoneX底部安全区域
#define kSafeAreaBottom                 (([UIScreen mainScreen].bounds.size.height == 812) ? 34.0f:0)


// Screen Size
//#define SCREEN_WIDTH                    320
#define SCREEN_WIDTH                    CGRectGetWidth([[UIScreen mainScreen] bounds])
#define SCREEN_HEIGHT                   CGRectGetHeight([[UIScreen mainScreen] bounds])
#define TAB_BAR_HEIGHT                    50
#define TAB_BAR_SHOW_HEIGHT             (TAB_BAR_HEIGHT + kSafeAreaBottom)  //iPhoneX是 50+34,其他设备是50+0
#define SEARCH_BAR_HEIGHT                44
#define NAVIGATION_BAR_HEIGHT           44
#define KEYBOARD_HEIGHT                    260.0
#define KStatusBarHeight                20.0
#define SCREEN_SCALE                    SCREEN_WIDTH/320.f
#define orderDetailEdgeDiatance_X       13

// 电话状态会变成40
#define KNewStatusBarHeight                [[UIApplication sharedApplication] statusBarFrame].size.height
#define KViewControllerHeight           (SCREEN_HEIGHT-KNewStatusBarHeight-NAVIGATION_BAR_HEIGHT)


//fengdong给宏加上括号，否则x为表达式时会错误扩展
#define kScaleNum(x)                    ((x)*SCREEN_SCALE)         //以iphone5s设计稿来计算适配其他屏幕的高度  //JB sheji
#define kIphone6Scale(x)                ((x)*SCREEN_WIDTH/375.0f) //以iphone6设计稿来计算适配其他屏幕的高度
#define kIphone6PlusScale(x)            ((x)*SCREEN_WIDTH/414.0f) //以iphone6plus设计稿来计算适配其他屏幕的高度


// 7.0以上系统，nav bar 64象素
#define EXTENDED_LAYOUT_TOP_OFFSET         ([[UIApplication sharedApplication] statusBarFrame].size.height + 44)
#define EXTENDED_LAYOUT_TOP_OFFSET_BY_NAVIGATIONBAR(_BAR) { if (_BAR) \
{\
([[UIApplication sharedApplication] statusBarFrame].size.height + _BAR.navigationBar.frame.height)\
}else\
{\
([[UIApplication sharedApplication] statusBarFrame].size.height + 44)\
}\
}


// 2.0以上系统为64,以下为0
#define JD_TOP_OFFSET                   ([[UIApplication sharedApplication] statusBarFrame].size.height + 44)

//地址相关
// 上一次的位置坐标（经纬度）
#define kLastLocationCoordinateKey       @"lastLocationCoordinateKey"

// 上一次经纬度定位成功时的时间
#define kLastLocationCoordinateTimeKey   @"lastLocationCoordinateTimeKey"

// 纬度
#define kLocationCoordinateLatitudeKey   @"coordinateLatitudeKey"

// 经度
#define kLocationCoordinateLongitudeKey  @"coordinateLongitudeKey"

//无空格  北京海淀区三环内
#define AddressLocationString       @"AddressLocationString"


// 默认省份列表 value key ( NSUserDefaults,  NSArray )
#define kProvinceListKey          @"defaultProvinceListKey"

// 默认省份ID value key ( NSUserDefaults,  NSString )
#define kDefaultProvinceIdKey       @"defaultProvinceIdKey"

// 默认城市ID value key ( NSUserDefaults,  NSString )
#define kDefaultCityIdKey           @"defaultCityIdKey"

// 默认县ID value key ( NSUserDefaults,  NSString )
#define kDefaultCountyIdKey           @"defaultCountyIdKey"

// 默认城镇ID value key ( NSUserDefaults,  NSString )
#define kDefaultTownIdKey           @"defaultTownIdKey"

// 首页cell的上边距
#define HOME_CELL_TOP_MARGIN          20


// 检测__OBJECT是否是__CLASS的实例
// 如果是，表达式的值就是__OBJECT；若不是，则表达式的值是nil
// 其功能类似于 Swift 中的 as?
#define JD_DOWNCAST_SAFELY(__OBJECT, __CLASS) ( [__OBJECT isKindOfClass:__CLASS] ? __OBJECT : nil )
#define JD_DOWNCAST_SAFELY_V2(__OBJECT, __CLASS) ( [__OBJECT isKindOfClass:[__CLASS class]] ? (__CLASS *)__OBJECT : nil )

#define JD_PROTOCOL_DOWNCAST_SAFELY(__OBJECT, __PROTOCOL) ( [__OBJECT conformsToProtocol:@protocol(__PROTOCOL)] ? (id<__PROTOCOL>)__OBJECT : nil )

// 程序运行次数 value key ( NSUserDefaults,  NSNumber )
#define kJD4iPhoneRunCount            @"JD4iPhoneRunCount"

// 程序打开次数 value key ( NSUserDefaults,  NSNumber )
#define kJD4iPhoneOpenCount         @"JD4iPhoneOpenCount"


typedef enum {
    CharacterType_Number = 0,                     //!< 数字
    CharacterType_Letter = 1,                     //!< 英文
    CharacterType_NumberAndLetterAndChinese = 2   //!< 中文
}CharacterType;


#endif /* JDB4iPhoneGlobal_h */
