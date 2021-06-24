//
//  YFMyInfoViewController.h
//  Medicine
//
//  Created by BigShow on 2021/6/21.
//

#import <UIKit/UIKit.h>
#import "YFPickerViewConfig.h"
NS_ASSUME_NONNULL_BEGIN
@class YFPickerView;
@protocol YFPickerViewDelete <NSObject>

@optional
- (void)pickerView:(YFPickerView *)pickerView didSelect:(NSString *)selectedContent;
- (void)pickerView:(YFPickerView *)pickerView completion:(NSString *)selectedContent;

@end


@interface YFPickerView : UIView

/**
 显示pickerView

 @param dataList 传入的数据，必传，否则不显示 支持NSString、NSNumber、NSDictionary
 @param config 自定义样式，如果传空则用默认配置
 @param completion 点击确定按钮时回调
 */
+ (void)showWithDataList:(nonnull NSArray *)dataList
                  config:(nullable YFPickerViewConfig *)config
               didSelect:(nullable void(^)(NSString * _Nullable selectContent))didSelect
              completion:(nullable void(^)(NSString * _Nullable selectContent))completion;


+ (void)showWithDataList:(nonnull NSArray *)dataList
                  config:(nullable YFPickerViewConfig *)config;
/*
 如果需要自定义tipLabel
 可以+sharedView 拿到对象，设置delegate，实现代理方法
 
 */
+ (YFPickerView *)sharedView;


@property (nonatomic, weak) id<YFPickerViewDelete> delegate;

@property (nonatomic, strong) UILabel *tipLabel;
@end

NS_ASSUME_NONNULL_END

