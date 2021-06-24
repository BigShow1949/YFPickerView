//
//  YFMyInfoViewController.h
//  Medicine
//
//  Created by BigShow on 2021/6/21.
//

#import "YFPickerViewConfig.h"

#define kFontRegularSize(font)  [UIFont fontWithName:@"PingFang-SC-Regular" size:font]
#define HexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define kContentColor HexRGB(0x333333)
#define kBlueColor HexRGB(0x1890FF)

static NSString * const kDividedSymbol = @","; // divided symbol

@implementation YFPickerViewConfig

- (instancetype)init {
    if (self == [super init]) {
        [self defaultConfig];
    }
    return self;
}

+ (instancetype)configStyle1
{
    YFPickerViewConfig *config = [[YFPickerViewConfig alloc] init];
    
    UIFont *font = kFontRegularSize(17);

    config.maskAlpha = 0.5f;
    config.isTouchMaskHide = YES;
    
    config.pickerViewHeight = 300.0f;
    config.rowHeight = 44.0f;
    config.selectRowTitleAttribute = @{NSForegroundColorAttributeName : kContentColor, NSFontAttributeName : font};
    config.unSelectRowTitleAttribute = @{NSForegroundColorAttributeName : [UIColor lightGrayColor], NSFontAttributeName : font};
    if (@available(iOS 14.0, *)) {
        config.separatorColor = [[UIColor redColor] colorWithAlphaComponent:0.12];
    } else {
        config.separatorColor = [UIColor colorWithRed:222.0/255.0 green:222.0/255.0 blue:222.0/255.0 alpha:1.0];
    }
    config.separatorColor = [UIColor redColor];
    config.isScrollToSelectedRow = YES;
    config.sureBtnTitle = @"完成";
    config.sureTextColor = kBlueColor;
    config.sureTextFont = font;
    
    config.cancelBtnTitle = @"取消";
    config.cancelTextColor = [UIColor grayColor];
    config.cancelTextFont = font;
    
    config.titleLabelText = @"";
    config.titleTextColor = HexRGB(0x999999);
    config.titleTextFont = font;
    config.titleLineColor = [UIColor colorWithRed:222.0/255.0 green:222.0/255.0 blue:222.0/255.0 alpha:1.0];
    config.dividedSymbol = @".";
    config.isDividedSelectContent = YES;
    config.isShowSelectContent = YES;
    config.hiddenTitleLabel = NO;
    
    config.isAnimationShow = YES;
    
    return config;
}


- (void)defaultConfig {
    
    self.maskAlpha = 0.5f;
    self.isTouchMaskHide = NO;
    
    self.pickerViewHeight = 216.0f;
    self.rowHeight = 32.0f;
    self.selectRowTitleAttribute = @{NSForegroundColorAttributeName : kYFPickerViewDefaultThemeColor, NSFontAttributeName : [UIFont systemFontOfSize:20.0f]};
    self.unSelectRowTitleAttribute = @{NSForegroundColorAttributeName : [UIColor lightGrayColor], NSFontAttributeName : [UIFont systemFontOfSize:20.0f]};
    if (@available(iOS 14.0, *)) {
        self.separatorColor = [UIColor tertiarySystemFillColor];
    } else {
        self.separatorColor = [UIColor colorWithRed:222.0/255.0 green:222.0/255.0 blue:222.0/255.0 alpha:1.0];
    }
    self.isScrollToSelectedRow = NO;
    self.sureBtnTitle = @"确定";
    self.sureTextColor = kYFPickerViewDefaultThemeColor;
    self.sureTextFont = [UIFont systemFontOfSize:17.0];
    
    self.cancelBtnTitle = @"取消";
    self.cancelTextColor = [UIColor grayColor];
    self.cancelTextFont = [UIFont systemFontOfSize:17.0];
    
    self.titleLabelText = @"";
    self.titleTextColor = [UIColor darkTextColor];
    self.titleTextFont = [UIFont systemFontOfSize:17.0];
    self.titleLineColor = [UIColor colorWithRed:222.0/255.0 green:222.0/255.0 blue:222.0/255.0 alpha:1.0];
    self.dividedSymbol = kDividedSymbol;
    self.isDividedSelectContent = NO;
    self.isShowSelectContent = NO;
    self.hiddenTitleLabel = YES;
    
    self.isAnimationShow = YES;
}


@end
