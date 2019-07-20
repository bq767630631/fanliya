//
//  CouponSearchView.m
//  daBaiZhiJia
//
//  Created by 包强 on 2019/4/19.
//  Copyright © 2019 包强. All rights reserved.
//

#import "CouponSearchView.h"
#import "KLSwitch.h"
@interface CouponSearchView ()

@property (weak, nonatomic) IBOutlet KLSwitch *customSwitch;

@end
@implementation CouponSearchView

-(void)awakeFromNib{
    [super awakeFromNib];

    self.customSwitch.tintColor = RGBColor(220, 220, 220);
    self.customSwitch.onTintColor = RGBColor(241, 152, 51);
    [self.customSwitch setDidChangeHandler:^(BOOL isOn) {
        if (self.block) {
            self.block(isOn);
        }
    }];
}


@end
