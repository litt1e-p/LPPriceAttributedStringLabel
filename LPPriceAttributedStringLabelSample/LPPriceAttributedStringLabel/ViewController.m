//
//  ViewController.m
//  LPPriceAttributedStringLabel
//
//  Created by  litt1e-p on 16/2/4.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "ViewController.h"
#import "LPPriceAttributedStringLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LPPriceAttributedStringLabel *al1 = [[LPPriceAttributedStringLabel alloc] init];
    al1.frame                         = CGRectMake(50, 200, self.view.frame.size.width, 50);
    al1.moneyType                     = LPMoneyTypeUSD;
    al1.integerStringFont             = [UIFont systemFontOfSize:30.f];
    al1.decimalStringFont             = [UIFont systemFontOfSize:18.f];
    al1.integerStringFontColor        = [UIColor redColor];
    al1.decimalStringFontColor        = [UIColor purpleColor];
    al1.moneyTypeStringFont           = [UIFont systemFontOfSize:35.f];
    al1.moneyTypeStringFontColor      = [UIColor greenColor];
    al1.text                          = @"998.00";
    
    LPPriceAttributedStringLabel *al2 = [[LPPriceAttributedStringLabel alloc] init];
    al2.frame                         = CGRectMake(180, 200, self.view.frame.size.width, 50);
    al2.moneyType                     = LPMoneyTypeEUR;
    al2.integerStringFont             = [UIFont systemFontOfSize:25.f];
    al2.decimalStringFont             = [UIFont systemFontOfSize:42.f];
    al2.integerStringFontColor        = [UIColor blueColor];
    al2.decimalStringFontColor        = [UIColor brownColor];
    al2.moneyTypeStringFont           = [UIFont systemFontOfSize:48.f];
    al2.moneyTypeStringFontColor      = [UIColor redColor];
    al2.text                          = @"399.993";
    
    LPPriceAttributedStringLabel *al3 = [[LPPriceAttributedStringLabel alloc] init];
    al3.frame                         = CGRectMake(150, 280, self.view.frame.size.width, 50);
    al3.moneyType                     = LPMoneyTypeCNY;
    al3.integerStringFont             = [UIFont systemFontOfSize:35.f];
    al3.decimalStringFont             = [UIFont systemFontOfSize:22.f];
    al3.integerStringFontColor        = [UIColor purpleColor];
    al3.decimalStringFontColor        = [UIColor grayColor];
    al3.moneyTypeStringFont           = [UIFont systemFontOfSize:19.f];
    al3.moneyTypeStringFontColor      = [UIColor redColor];
    al3.text                          = @"88.77";
    
    [self.view addSubview:al1];
    [self.view addSubview:al2];
    [self.view addSubview:al3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
