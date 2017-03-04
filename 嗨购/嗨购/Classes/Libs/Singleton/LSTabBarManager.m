
//
//  LSTabBarManager.m
//  嗨购
//
//  Created by 焦林生 on 2017/2/23.
//  Copyright © 2017年 jiaolinsheng. All rights reserved.
//

#import "LSTabBarManager.h"

static LSTabBarManager *_shopping;
@implementation LSTabBarManager

+ (instancetype)shareManager
{

    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        _shopping = [[LSTabBarManager alloc] init];
    });
    
    return _shopping;
}
@end
