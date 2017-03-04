//
//  LSNavigationViewController.m
//  嗨购
//
//  Created by 焦林生 on 2016/11/13.
//  Copyright © 2016年 jiaolinsheng. All rights reserved.
//

#import "LSNavigationViewController.h"

@interface LSNavigationViewController ()

@end

@implementation LSNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{

    if (self.viewControllers.count > 0) {
       
        [LSTabBarTool mainTabbarhidden];
    }
    [super pushViewController:viewController animated:YES];

}

- (UIViewController *)childViewControllerForStatusBarStyle
{
    return self.topViewController;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
