//
//  LPPriceAttributedStringLabel.h
//
//  Created by  litt1e-p on 16/2/1.
//  Copyright © 2016年 litt1e-p . All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LPMoneyType)
{
    LPMoneyTypeUSD,
    LPMoneyTypeEUR,
    LPMoneyTypeCNY,
    LPMoneyTypeGRP,
};

@interface LPPriceAttributedStringLabel : UILabel

@property (nonatomic, assign) LPMoneyType moneyType;
@property (nonatomic, strong) UIFont *moneyTypeStringFont;
@property (nonatomic, strong) UIColor *moneyTypeStringFontColor;
@property (nonatomic, strong) UIFont *decimalStringFont;
@property (nonatomic, strong) UIColor *decimalStringFontColor;
@property (nonatomic, strong) UIFont *integerStringFont;
@property (nonatomic, strong) UIColor *integerStringFontColor;

@end
