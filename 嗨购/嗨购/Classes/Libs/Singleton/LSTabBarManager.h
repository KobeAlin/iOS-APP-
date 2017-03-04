//
//  LSTabBarManager.h
//  嗨购
//
//  Created by 焦林生 on 2017/2/23.
//  Copyright © 2017年 jiaolinsheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSTabBarManager : NSObject

@property (nonatomic, strong) UIImageView *detailTabbar;

@property (nonatomic, strong) UIImageView *shopTabbar;

@property (nonatomic, strong) UIImageView *mainTabbar;

+ (instancetype)shareManager;

@end
