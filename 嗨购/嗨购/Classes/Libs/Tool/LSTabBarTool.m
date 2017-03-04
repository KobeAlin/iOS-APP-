//
//  LSTabBarTool.m
//  嗨购
//
//  Created by 焦林生 on 2017/2/23.
//  Copyright © 2017年 jiaolinsheng. All rights reserved.
//

#import "LSTabBarTool.h"

@implementation LSTabBarTool

+ (void)mainTabbarShow
{
    LSTabBarManager *manager = [LSTabBarManager shareManager];
    manager.mainTabbar.hidden = NO;
}

+ (void)mainTabbarhidden
{
    LSTabBarManager *manager = [LSTabBarManager shareManager];
    manager.mainTabbar.hidden = YES;
}

+ (void)detailTabbarshow
{
    LSTabBarManager *manager = [LSTabBarManager shareManager];
    manager.mainTabbar.hidden = NO;
}

+ (void)detailTabbarhidden
{
    LSTabBarManager *manager = [LSTabBarManager shareManager];
    manager.mainTabbar.hidden = YES;
}

+ (void)shopCarTabbarshow
{
    LSTabBarManager *manager = [LSTabBarManager shareManager];
    manager.mainTabbar.hidden = NO;
}

+ (void)shopCarTabbarhidden
{
    LSTabBarManager *manager = [LSTabBarManager shareManager];
    manager.mainTabbar.hidden = YES;
}


@end
