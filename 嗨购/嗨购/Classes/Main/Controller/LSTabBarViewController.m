//
//  LSTabBarViewController.m
//  嗨购
//
//  Created by 焦林生 on 2016/11/13.
//  Copyright © 2016年 jiaolinsheng. All rights reserved.
//

#import "LSTabBarViewController.h"
#import "LSNavigationViewController.h"
#import "LSHomeViewController.h"
#import "LSDiscoverViewController.h"
#import "LSSearchViewController.h"
#import "LSUserCenterViewController.h"

@interface LSTabBarViewController ()

@property (nonatomic, weak) UIButton *lastButton;
@end

@implementation LSTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tabBar.hidden = YES;
    
    [self creatUIController];
    
    [self createUI];
}

- (void)creatUIController
{
    LSHomeViewController *home = [[LSHomeViewController alloc] init];
    LSNavigationViewController *homeNav = [[LSNavigationViewController alloc] initWithRootViewController:home];
    home.title = @"首页";
    
    LSDiscoverViewController *discover = [[LSDiscoverViewController alloc] init];
    LSNavigationViewController *discoverNav = [[LSNavigationViewController alloc] initWithRootViewController:discover];
    discover.title = @"发现";
    
     LSSearchViewController *search = [[LSSearchViewController alloc] init];
    LSNavigationViewController *searchNav = [[LSNavigationViewController alloc] initWithRootViewController:search];
    search.title = @"搜索";
    
    LSUserCenterViewController *userCenter = [[LSUserCenterViewController alloc] init];
    LSNavigationViewController *userCenterNav = [[LSNavigationViewController alloc] initWithRootViewController:userCenter];
    userCenter.title = @"用户中心";
    
    NSArray *controllers = @[homeNav,discoverNav,searchNav,userCenterNav];
    self.viewControllers = controllers;
}

- (void)createUI
{

    UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake(0,kScreenH-49, kScreenW, 49)];
    imageview.backgroundColor = [UIColor whiteColor];
    imageview.userInteractionEnabled = YES;
    [self.view addSubview:imageview];
    
    LSTabBarManager *manager = [LSTabBarManager shareManager];
    manager.mainTabbar = imageview;
    
    CGFloat btnW = kScreenW / 4;
    
    //创建4个对象
    for (int index=0; index<4; index++) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(index * btnW, 0, btnW, 48);
        
        NSString *str1 = [NSString stringWithFormat:@"CostomTabBar%d",index+1];
        NSString *str2 = [NSString stringWithFormat:@"CostomTabBar%dSel",index+1];
        
        [btn setImage:[UIImage imageNamed:str1] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:str2] forState:UIControlStateSelected];
        
        //设置默认状态下显示第一个视图控制器，第一个按钮处于选中状态
        if (index==0) {
            [self btnClick:btn];
        }
        
        btn.tag = index;
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [imageview addSubview:btn];
    }
}

- (void)btnClick:(UIButton *)sender
{
    
    self.lastButton.selected = NO;
    
    sender.selected = YES;
    
    //记录上次选中的状态
    self.lastButton = sender;
    
    //跳转控制器
    self.selectedIndex = sender.tag;
    
}

@end
