//
//  YSPriceAttributedStringLabel.m
//
//  Created by  litt1e-p on 16/2/1.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "LPPriceAttributedStringLabel.h"

@implementation LPPriceAttributedStringLabel

static NSString *kMoneyTypeCNYStr = @"¥";
static NSString *kMoneyTypeUSDStr = @"$";

- (void)setText:(NSString *)text
{
    if (!text) {
        return;
    }
    NSString *textPrefix = self.moneyType == LPMoneyTypeCNY ? kMoneyTypeCNYStr : kMoneyTypeUSDStr;
    NSMutableAttributedString *aStr = [[NSMutableAttributedString alloc] initWithString:textPrefix];
    [aStr addAttributes:@{
                          NSFontAttributeName : self.moneyTypeStringFont,
                          NSForegroundColorAttributeName : self.moneyTypeStringFontColor
                         } range:NSMakeRange(0, 1)];
    
    NSArray *tmp = [text componentsSeparatedByString:@"."];
    if (tmp.count == 1) {
        //only integer
        NSString *integerStr = [tmp firstObject];
        NSRange integerStrRange = NSMakeRange(0, integerStr.length);
        NSMutableAttributedString *integerAStr = [[NSMutableAttributedString alloc] initWithString:integerStr];
        [integerAStr addAttributes:@{
                                     NSFontAttributeName : self.integerStringFont,
                                     NSForegroundColorAttributeName : self.integerStringFontColor
                                     } range:integerStrRange];
        [aStr appendAttributedString:integerAStr];
        self.attributedText = aStr;
    } else if (tmp.count == 2) {
        NSString *integerStr = [tmp firstObject];
        NSRange integerStrRange = NSMakeRange(0, integerStr.length);
        NSMutableAttributedString *integerAStr = [[NSMutableAttributedString alloc] initWithString:integerStr];
        [integerAStr addAttributes:@{
                                     NSFontAttributeName : self.integerStringFont,
                                     NSForegroundColorAttributeName : self.integerStringFontColor
                                     } range:integerStrRange];
        
        NSString *decimalStr = [@"." stringByAppendingString:[tmp lastObject]];
        NSRange decimalStrRange = NSMakeRange(0, decimalStr.length);
        NSMutableAttributedString *decimalAStr = [[NSMutableAttributedString alloc] initWithString:decimalStr];
        [decimalAStr addAttributes:@{
                                     NSFontAttributeName : self.decimalStringFont,
                                     NSForegroundColorAttributeName : self.decimalStringFontColor
                                     } range:decimalStrRange];
        [aStr appendAttributedString:integerAStr];
        [aStr appendAttributedString:decimalAStr];
        self.attributedText = aStr;
    }
}

- (UIColor *)moneyTypeStringFontColor
{
    return _moneyTypeStringFontColor ? : [UIColor blackColor];
}

- (UIFont *)moneyTypeStringFont
{
    return _moneyTypeStringFont ? : [UIFont systemFontOfSize:15.f];
}

- (UIFont *)integerStringFont
{
    return _integerStringFont ? : [UIFont systemFontOfSize:15.f];
}

- (UIColor *)integerStringFontColor
{
    return _integerStringFontColor ? : [UIColor blackColor];
}

- (UIFont *)decimalStringFont
{
    return _decimalStringFont ? : [UIFont systemFontOfSize:15.f];
}

- (UIColor *)decimalStringFontColor
{
    return _decimalStringFontColor ? : [UIColor blackColor];
}

@end
